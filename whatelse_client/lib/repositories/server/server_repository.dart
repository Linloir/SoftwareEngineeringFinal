import 'dart:async';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:isar/isar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whatelse_client/generated/grpc/src/category.pbgrpc.dart';
import 'package:whatelse_client/generated/grpc/src/channel.pbgrpc.dart' as grpc_channel;
import 'package:whatelse_client/generated/grpc/src/profile.pbgrpc.dart';
import 'package:whatelse_client/generated/grpc/src/schedule.pbgrpc.dart';
import 'package:whatelse_client/generated/grpc/src/session.pbgrpc.dart';
import 'package:whatelse_client/generated/grpc/src/tag.pbgrpc.dart';
import 'package:whatelse_client/generated/grpc/src/task.pbgrpc.dart';
import 'package:whatelse_client/generated/grpc/src/taskass.pbgrpc.dart' as grpc_taskass;
import 'package:whatelse_client/generated/grpc/src/user.pbgrpc.dart';
import 'package:whatelse_client/generated/isar/category.dart';
import 'package:whatelse_client/generated/isar/channel.dart';
import 'package:whatelse_client/generated/isar/channel_subscription.dart';
import 'package:whatelse_client/generated/isar/profile.dart';
import 'package:whatelse_client/generated/isar/schedule.dart';
import 'package:whatelse_client/generated/isar/session.dart';
import 'package:whatelse_client/generated/isar/session_record.dart';
import 'package:whatelse_client/generated/isar/session_record_attachment.dart';
import 'package:whatelse_client/generated/isar/tag.dart';
import 'package:whatelse_client/generated/isar/task.dart';
import 'package:whatelse_client/generated/isar/task_asset.dart';
import 'package:whatelse_client/generated/isar/task_assignment.dart';
import 'package:whatelse_client/generated/isar/user.dart';
import 'package:whatelse_client/providers/file_provider.dart';
import 'package:whatelse_client/providers/isar_provider.dart';
import 'package:whatelse_client/repositories/auth/auth_repository.dart';
import 'package:whatelse_client/repositories/config/config_repository.dart';

class PushResponse {
  PushResponse({
    required this.localId,
    required this.remoteId,
  });

  final int localId;
  final int remoteId;
}

class PushError {
  PushError({
    required this.localId,
  });

  final int localId;
}

class _FetchRequest {
  _FetchRequest({
    required this.interval,
    required this.completer,
  });

  final Duration interval;
  final Completer<void> completer;
}

class _InvalidTypeException implements Exception {
  _InvalidTypeException(this.type);

  final Type type;

  @override
  String toString() {
    return 'Invalid type: $type';
  }
}

class ServerRepository {
  ServerRepository({
    required AuthRepository authRepository,
  }): _authRepository = authRepository {
    Future(() async {
      await for (final data in _pushController.stream) {
        // await for connectivity
        final connectivity = await Connectivity().checkConnectivity();
        if (connectivity == ConnectivityResult.none) {
          await Connectivity().onConnectivityChanged.firstWhere((event) => event != ConnectivityResult.none);
        }

        // await for fetch
        await _fetchCompleter?.future;

        await _pushData(data);
      }
    });

    _connectivitySubscription = Connectivity().onConnectivityChanged.listen((event) {
      if (event != ConnectivityResult.none) {
        _fetchRequestSubscription?.cancel();
        _fetchRequestSubscription = null;
      } else {
        _fetchRequestSubscription ??= _fetchRequestController.stream.listen((request) {
          _fetchTimer?.cancel();
          _fetchTimer = Timer(
            request.interval,
            () async {
              await _fetchData();
              request.completer.complete();
            }
          );
        });
      }
    });

    Future(() async {
      final connectivity = await Connectivity().checkConnectivity();
      if (connectivity == ConnectivityResult.none) {
        return;
      }
      _fetchRequestSubscription ??= _fetchRequestController.stream.listen((request) {
        _fetchTimer?.cancel();
        _fetchTimer = Timer(
          request.interval,
          () async {
            await _fetchData();
            request.completer.complete();
          }
        );
      });
    });

    _fetchData();
  }

  final AuthRepository _authRepository;

  late final StreamSubscription _connectivitySubscription;

  final _pushController = StreamController<dynamic>();
  final _pushResponseController = StreamController<PushResponse>.broadcast();
  final _pushErrorController = StreamController<PushError>.broadcast();
  Stream<PushResponse> get pushResponseStream => _pushResponseController.stream;
  Stream<PushError> get pushErrorStream => _pushErrorController.stream;

  final _fetchRequestController = StreamController<_FetchRequest>();
  StreamSubscription? _fetchRequestSubscription;
  Timer? _fetchTimer;
  Completer<void>? _fetchCompleter;

  final _fetchDataController = StreamController<List<dynamic>>.broadcast();
  Stream<List<dynamic>> get fetchDataStream => _fetchDataController.stream;

  /// Schedule a push of the provided [data]
  /// 
  /// [data] will be added to internal push stream, and whenever
  /// the connection is available, the data will be consumed by
  /// pushing data to the cloud.
  /// 
  /// If a push failed, it will be pushed back to the stream,
  /// and thanks to the protection of `updateAt`, it won't
  /// conflict with later pushes.
  void push(dynamic data) {
    if (_pushController.isClosed) {
      return;
    }

    _pushController.add(data);
  }

  /// Schedule a fetch operation immediately and return a
  /// future that will be completed when the fetch is done.
  Future<void> fetch() async {
    if (_fetchRequestController.isClosed) {
      return;
    }

    final completer = Completer<void>();

    _fetchRequestController.add(_FetchRequest(
      completer: completer,
      interval: Duration.zero,
    ));
    
    await completer.future;
  }

  Future<void> _pushData(dynamic data) async {
    // cancel fetch
    _fetchTimer?.cancel();

    // push code
    while (true) {
      try {
        // await for connectivity
        final connectivity = await Connectivity().checkConnectivity();
        if (connectivity == ConnectivityResult.none) {
          await Connectivity().onConnectivityChanged.firstWhere((event) => event != ConnectivityResult.none);
        }

        // await for fetch
        await _fetchCompleter?.future;

        // get access token
        final pref = await SharedPreferences.getInstance();
        final token = pref.getString('access_token');

        // create client channel
        final channel = ClientChannel(
          ConfigRepository.mainServerConfig.host,
          port: ConfigRepository.mainServerConfig.port,
        );

        switch (data.runtimeType) {
          case Profile:
            _pushProfile(data, channel, token);
            break;
          case Category:
            _pushCategory(data, channel, token);
            break;
          case ChannelSubscription:
            _pushChannelSubscription(data, channel, token);
            break;
          case Channel:
            _pushChannel(data, channel, token);
            break;
          case Schedule:
            _pushSchedule(data, channel, token);
            break;
          case Session:
            _pushSession(data, channel, token);
            break;
          case SessionRecordAttachment:
            _pushSessionRecordAttachment(data, channel, token);
            break;
          case SessionRecord:
            _pushSessionRecord(data, channel, token);
            break;
          case Tag:
            _pushTag(data, channel, token);
            break;
          case TaskAsset:
            _pushTaskAsset(data, channel, token);
            break;
          case TaskAssignment:
            _pushTaskAssignment(data, channel, token);
            break;
          case Task:
            _pushTask(data, channel, token);
            break;
          case User:
            break;
          default:
            throw _InvalidTypeException(data.runtimeType);
        }
      } on _InvalidTypeException catch (_) {
        // ignore
        break;
      } on SocketException catch (_) {
        // network error
        await Future.delayed(const Duration(seconds: 1));
        continue;
      } on GrpcError catch (e) {
        switch (e.code) {
          case StatusCode.unavailable:
          case StatusCode.internal:
          case StatusCode.deadlineExceeded:
            // network error
            await Future.delayed(const Duration(seconds: 1));
            continue;
          case StatusCode.unauthenticated:
            // token expired
            await _authRepository.refreshAccessToken();
            break;
          default:
            // unknown error, ignore this update and delete local data
            _pushErrorController.add(PushError(
              localId: data.id,
            ));
            break;
        }
      } catch (_) {
        // unknown error, ignore this update and delete local data
        _pushErrorController.add(PushError(
          localId: data.id,
        ));
        break;
      }
    }

    // schedule next fetch
    if (!_fetchRequestController.isClosed) {
      _fetchRequestController.add(_FetchRequest(
        completer: Completer(),
        interval: const Duration(seconds: 1),
      ));
    }
  }

  Future<void> _fetchData() async {
    if (_fetchDataController.isClosed) {
      return;
    }
    
    // set fetch completer
    _fetchCompleter = Completer();

    // schedule next fetch
    _fetchRequestController.add(_FetchRequest(
      completer: Completer(),
      interval: const Duration(seconds: 30),
    ));

    // finish fetch
    _fetchCompleter?.complete();
  }

  Future<void> _pushProfile(Profile profile, ClientChannel channel, String? token) async {
    final stub = ProfileClient(
      channel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );

    // push
    if (profile.rId == null) {
      // create
      final response = await stub.create(CreateProfileRequest(
        name: profile.name,
        desc: profile.desc,
        color: profile.color,
        icon: profile.icon,
        updateAt: Int64(profile.updateAt),
        deleteAt: profile.deleteAt != null
          ? Int64(profile.deleteAt!)
          : null,
      ));
      _pushResponseController.add(PushResponse(
        localId: profile.id,
        remoteId: response.profileId.toInt(),
      ));
    }
    else if (profile.deleteAt == null) {
      // modify
      await stub.modify(ModifyProfileRequest(
        profileId: Int64(profile.rId!),
        name: profile.name,
        desc: profile.desc,
        color: profile.color,
        icon: profile.icon,
        updateAt: Int64(profile.updateAt),
      ));
    }
    else {
      // delete
      await stub.remove(RemoveProfileRequest(
        profileId: Int64(profile.rId!),
        deleteAt: Int64(profile.deleteAt!),
      ));
    }
  }

  Future<void> _pushCategory(Category category, ClientChannel channel, String? token) async {
    final stub = CategoryClient(
      channel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );

    if (!category.profile.isLoaded) {
      await category.profile.load();
    }
    if (category.profile.value!.rId == null) {
      final isar = await IsarProvider.instance;
      final profile = isar.profiles.watchObject(category.profile.value!.id);
      await profile.firstWhere((element) => element?.rId != null);
      await category.profile.load();
    }

    if (category.rId == null) {
      // create
      final response = await stub.create(CreateCategoryRequest(
        profileId: Int64(category.profile.value!.rId!),
        name: category.name,
        desc: category.desc,
        color: category.color,
        icon: category.icon,
        updateAt: Int64(category.updateAt),
        deleteAt: category.deleteAt != null
          ? Int64(category.deleteAt!)
          : null,
      ));
      _pushResponseController.add(PushResponse(
        localId: category.id,
        remoteId: response.categoryId.toInt(),
      ));
    }
    else if (category.deleteAt == null) {
      // modify
      await stub.modify(ModifyCategoryRequest(
        categoryId: Int64(category.rId!),
        name: category.name,
        desc: category.desc,
        color: category.color,
        icon: category.icon,
        updateAt: Int64(category.updateAt),
      ));
    }
    else {
      // delete
      await stub.remove(RemoveCategoryRequest(
        categoryId: Int64(category.rId!),
        deleteAt: Int64(category.deleteAt!),
      ));
    }
  }

  Future<void> _pushChannelSubscription(ChannelSubscription subscription, ClientChannel channel, String? token) async {
    final stub = grpc_channel.ChannelClient(
      channel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );

    final awaitChannel = Future(() async {
      if (!subscription.channel.isLoaded) {
        await subscription.channel.load();
      }
      if (subscription.channel.value!.rId == null) {
        final isar = await IsarProvider.instance;
        final channel = isar.channels.watchObject(subscription.channel.value!.id);
        await channel.firstWhere((element) => element?.rId != null);
        await subscription.channel.load();
      }
    });

    final awaitProfile = Future(() async {
      if (!subscription.profile.isLoaded) {
        await subscription.profile.load();
      }
      if (subscription.profile.value!.rId == null) {
        final isar = await IsarProvider.instance;
        final profile = isar.profiles.watchObject(subscription.profile.value!.id);
        await profile.firstWhere((element) => element?.rId != null);
        await subscription.profile.load();
      }
    });

    await Future.wait([
      awaitChannel,
      awaitProfile,
    ]);

    if (subscription.rId == null) {
      // create
      final response = await stub.createSubscription(grpc_channel.CreateSubscriptionRequest(
        profileId: Int64(subscription.profile.value!.rId!),
        channelId: Int64(subscription.channel.value!.rId!),
        shareRecord: subscription.shareRecord,
        type: _getGrpcSubscriptionType(subscription.type),
        updateAt: Int64(subscription.updateAt),
        deleteAt: subscription.deleteAt != null
          ? Int64(subscription.deleteAt!)
          : null,
      ));
      _pushResponseController.add(PushResponse(
        localId: subscription.id,
        remoteId: response.subscriptionId.toInt(),
      ));
    }
    else if (subscription.deleteAt == null) {
      // modify
      await stub.modifySubscription(grpc_channel.ModifySubscriptionRequest(
        subscriptionId: Int64(subscription.rId!),
        shareRecord: subscription.shareRecord,
        type: _getGrpcSubscriptionType(subscription.type),
        updateAt: Int64(subscription.updateAt),
      ));
    }
    else {
      // delete
      await stub.removeSubscription(grpc_channel.RemoveSubscriptionRequest(
        subscriptionId: Int64(subscription.rId!),
        deleteAt: Int64(subscription.deleteAt!),
      ));
    }
  }

  Future<void> _pushChannel(Channel channel, ClientChannel ch, String? token) async {
    final stub = grpc_channel.ChannelClient(
      ch,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );

    final awaitJobs = <Future<void>>[];
    awaitJobs.add(Future(() async {
      if (!channel.owner.isLoaded) {
        await channel.owner.load();
      }
      if (channel.owner.value!.rId == null) {
        final isar = await IsarProvider.instance;
        final profile = isar.profiles.watchObject(channel.owner.value!.id);
        await profile.firstWhere((element) => element?.rId != null);
        await channel.owner.load();
      }
    }));

    List<int>? img;
    List<int>? avatar;

    if (channel.imgRef != null) {
      awaitJobs.add(Future(() async {
        if (await File(channel.imgRef!).exists()) {
          img = await File(channel.imgRef!).readAsBytes();
        }
      }));
    }
    if (channel.avatarRef != null) {
      awaitJobs.add(Future(() async {
        if (await File(channel.avatarRef!).exists()) {
          avatar = await File(channel.avatarRef!).readAsBytes();
        }
      }));
    }

    if (channel.rId == null) {
      // create
      final response = await stub.create(grpc_channel.CreateChannelRequest(
        profileId: Int64(channel.owner.value!.rId!),
        name: channel.name,
        desc: channel.desc,
        icon: channel.icon,
        image: img,
        avatar: avatar,
        type: _getGrpcChannelType(channel.type),
        reqData: channel.requestData,
        updateAt: Int64(channel.updateAt),
        deleteAt: channel.deleteAt != null
          ? Int64(channel.deleteAt!)
          : null,
      ));
      _pushResponseController.add(PushResponse(
        localId: channel.id,
        remoteId: response.channelId.toInt(),
      ));
    }
    else if (channel.deleteAt == null) {
      // modify
      await stub.modify(grpc_channel.ModifyChannelRequest(
        channelId: Int64(channel.rId!),
        name: channel.name,
        desc: channel.desc,
        icon: channel.icon,
        image: img,
        avatar: avatar,
        type: _getGrpcChannelType(channel.type),
        reqData: channel.requestData,
        updateAt: Int64(channel.updateAt),
      ));
    }
    else {
      // delete
      await stub.remove(grpc_channel.RemoveChannelRequest(
        channelId: Int64(channel.rId!),
        deleteAt: Int64(channel.deleteAt!),
      ));
    }
  }

  Future<void> _pushSchedule(Schedule schedule, ClientChannel channel, String? token) async {
    final stub = ScheduleClient(
      channel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );

    final awaitProfile = Future(() async {
      if (!schedule.profile.isLoaded) {
        await schedule.profile.load();
      }
      if (schedule.profile.value!.rId == null) {
        final isar = await IsarProvider.instance;
        final profile = isar.profiles.watchObject(schedule.profile.value!.id);
        await profile.firstWhere((element) => element?.rId != null);
        await schedule.profile.load();
      }
    });

    final awaitSession = Future(() async {
      if (!schedule.session.isLoaded) {
        await schedule.session.load();
      }
      if (schedule.session.value!.rId == null) {
        final isar = await IsarProvider.instance;
        final session = isar.sessions.watchObject(schedule.session.value!.id);
        await session.firstWhere((element) => element?.rId != null);
        await schedule.session.load();
      }
    });

    await Future.wait([awaitProfile, awaitSession]);

    if (schedule.rId == null) {
      // create
      final response = await stub.create(CreateScheduleRequest(
        sessionId: Int64(schedule.session.value!.rId!),
        profileId: Int64(schedule.profile.value!.rId!),
        relStart: Int64(schedule.relStart),
        relEnd: Int64(schedule.relEnd),
        updateAt: Int64(schedule.updateAt),
        deleteAt: schedule.deleteAt != null
          ? Int64(schedule.deleteAt!)
          : null,
      ));
      _pushResponseController.add(PushResponse(
        localId: schedule.id,
        remoteId: response.scheduleId.toInt(),
      ));
    }
    else if (schedule.deleteAt == null) {
      // modify
      await stub.modify(ModifyScheduleRequest(
        scheduleId: Int64(schedule.rId!),
        relStart: Int64(schedule.relStart),
        relEnd: Int64(schedule.relEnd),
        updateAt: Int64(schedule.updateAt),
      ));
    }
    else {
      // delete
      await stub.remove(RemoveScheduleRequest(
        scheduleId: Int64(schedule.rId!),
        deleteAt: Int64(schedule.deleteAt!),
      ));
    }
  }

  Future<void> _pushSession(Session session, ClientChannel channel, String? token) async {
    final stub = SessionClient(
      channel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );

    final awaitParent = Future(() async {
      if (!session.parent.isLoaded) {
        await session.parent.load();
      }
      if (session.parent.value == null) {
        return;
      }
      else if (session.parent.value!.rId == null) {
        final isar = await IsarProvider.instance;
        final parent = isar.sessions.watchObject(session.parent.value!.id);
        await parent.firstWhere((element) => element?.rId != null);
        await session.parent.load();
      }
    });

    final awaitTask = Future(() async {
      if (!session.task.isLoaded) {
        await session.task.load();
      }
      if (session.task.value!.rId == null) {
        final isar = await IsarProvider.instance;
        final task = isar.tasks.watchObject(session.task.value!.id);
        await task.firstWhere((element) => element?.rId != null);
        await session.task.load();
      }
    });

    await Future.wait([awaitParent, awaitTask]);

    if (session.rId == null) {
      // create
      final response = await stub.create(CreateSessionRequest(
        taskId: Int64(session.task.value!.rId!),
        parentId: session.parent.value?.rId != null
          ? Int64(session.parent.value!.rId!)
          : null,
        start: Int64(session.start),
        end: Int64(session.end),
        cycle: session.cycle,
        dupCount: session.dupCount,
        updateAt: Int64(session.updateAt),
        deleteAt: session.deleteAt != null
          ? Int64(session.deleteAt!)
          : null,
      ));
      _pushResponseController.add(PushResponse(
        localId: session.id,
        remoteId: response.sessionId.toInt(),
      ));
    }
    else if (session.deleteAt == null) {
      // modify
      await stub.modify(ModifySessionRequest(
        sessionId: Int64(session.rId!),
        parentId: session.parent.value?.rId != null
          ? Int64(session.parent.value!.rId!)
          : null,
        start: Int64(session.start),
        end: Int64(session.end),
        cycle: session.cycle,
        dupCount: session.dupCount,
        updateAt: Int64(session.updateAt),
      ));
    }
    else {
      // delete
      await stub.remove(RemoveSessionRequest(
        sessionId: Int64(session.rId!),
        deleteAt: Int64(session.deleteAt!),
      ));
    }
  }

  Future<void> _pushSessionRecordAttachment(SessionRecordAttachment attachment, ClientChannel channel, String? token) async {
    final stub = SessionClient(
      channel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );

    if (!attachment.sessionRecord.isLoaded) {
      await attachment.sessionRecord.load();
    }
    if (attachment.sessionRecord.value!.rId == null) {
      final isar = await IsarProvider.instance;
      final sessionRecord = isar.sessionRecords.watchObject(attachment.sessionRecord.value!.id);
      await sessionRecord.firstWhere((element) => element?.rId != null);
      await attachment.sessionRecord.load();
    }

    final fileStream = await File(attachment.assetRef).exists()
      ? File(attachment.assetRef).openRead()
      : const Stream<List<int>>.empty();
    
    Stream<UploadAttachmentRequest> requestStream() async* {
      yield UploadAttachmentRequest(
        metaData: AttachmentMetaData(
          recordId: Int64(attachment.sessionRecord.value!.rId!),
          hash: attachment.fileId,
          name: attachment.fileName,
          updateAt: Int64(attachment.updateAt),
          deleteAt: attachment.deleteAt != null
            ? Int64(attachment.deleteAt!)
            : null,
        )
      );
      await for (final chunk in fileStream) {
        yield UploadAttachmentRequest(
          chunk: chunk,
        );
      }
    }
    
    if (attachment.rId == null) {
      // create
      final response = await stub.uploadAttachment(
        requestStream(),
      );
      _pushResponseController.add(PushResponse(
        localId: attachment.id,
        remoteId: response.attachmentId.toInt(),
      ));
    }
    else if (attachment.deleteAt == null) {
      // create as update
      await stub.uploadAttachment(
        requestStream(),
      );
    }
    else {
      // delete
      await stub.removeAttachment(RemoveAttachmentRequest(
        attachmentId: Int64(attachment.rId!),
        deleteAt: Int64(attachment.deleteAt!),
      ));
    }
  }

  Future<void> _pushSessionRecord(SessionRecord record, ClientChannel channel, String? token) async {
    final stub = SessionClient(
      channel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );

    final awaitProfile = Future(() async {
      if (!record.profile.isLoaded) {
        await record.profile.load();
      }
      if (record.profile.value!.rId == null) {
        final isar = await IsarProvider.instance;
        final profile = isar.profiles.watchObject(record.profile.value!.id);
        await profile.firstWhere((element) => element?.rId != null);
        await record.profile.load();
      }
    });

    final awaitSession = Future(() async {
      if (!record.session.isLoaded) {
        await record.session.load();
      }
      if (record.session.value!.rId == null) {
        final isar = await IsarProvider.instance;
        final session = isar.sessions.watchObject(record.session.value!.id);
        await session.firstWhere((element) => element?.rId != null);
        await record.session.load();
      }
    });

    await Future.wait([awaitProfile, awaitSession]);

    if (record.rId == null) {
      // create
      final response = await stub.createRecord(CreateRecordRequest(
        sessionId: Int64(record.session.value!.rId!),
        profileId: Int64(record.profile.value!.rId!),
        time: Int64(record.time),
        dupIndex: record.dupIndex,
        taskDue: Int64(record.taskDue),
        updateAt: Int64(record.updateAt),
        deleteAt: record.deleteAt != null
          ? Int64(record.deleteAt!)
          : null,
      ));
      _pushResponseController.add(PushResponse(
        localId: record.id,
        remoteId: response.recordId.toInt(),
      ));
    }
    else {
      await stub.modifyRecord(ModifyRecordRequest(
        recordId: Int64(record.rId!),
        time: Int64(record.time),
        dupIndex: record.dupIndex,
        taskDue: Int64(record.taskDue),
        updateAt: Int64(record.updateAt),
        deleteAt: record.deleteAt != null
          ? Int64(record.deleteAt!)
          : null,
      ));
    }
  }

  Future<void> _pushTag(Tag tag, ClientChannel channel, String? token) async {
    final stub = TagClient(
      channel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );

    if (!tag.profile.isLoaded) {
      await tag.profile.load();
    }
    if (tag.profile.value!.rId == null) {
      final isar = await IsarProvider.instance;
      final profile = isar.profiles.watchObject(tag.profile.value!.id);
      await profile.firstWhere((element) => element?.rId != null);
      await tag.profile.load();
    }

    if (tag.rId == null) {
      // create
      final response = await stub.create(CreateTagRequest(
        profileId: Int64(tag.profile.value!.rId!),
        name: tag.name,
        color: tag.color,
        icon: tag.icon,
        updateAt: Int64(tag.updateAt),
        deleteAt: tag.deleteAt != null
          ? Int64(tag.deleteAt!)
          : null,
      ));
      _pushResponseController.add(PushResponse(
        localId: tag.id,
        remoteId: response.tagId.toInt(),
      ));
    }
    else if (tag.deleteAt == null) {
      // modify
      await stub.modify(ModifyTagRequest(
        tagId: Int64(tag.rId!),
        name: tag.name,
        color: tag.color,
        icon: tag.icon,
        updateAt: Int64(tag.updateAt),
      ));
    }
    else {
      // delete
      await stub.remove(RemoveTagRequest(
        tagId: Int64(tag.rId!),
        deleteAt: Int64(tag.deleteAt!),
      ));
    }
  }

  Future<void> _pushTaskAsset(TaskAsset asset, ClientChannel channel, String? token) async {
    final stub = TaskClient(
      channel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );

    if (!asset.task.isLoaded) {
      await asset.task.load();
    }
    if (asset.task.value!.rId == null) {
      final isar = await IsarProvider.instance;
      final task = isar.tasks.watchObject(asset.task.value!.id);
      await task.firstWhere((element) => element?.rId != null);
      await asset.task.load();
    }

    final fileStream = await File(asset.ref).exists()
      ? File(asset.ref).openRead()
      : const Stream<List<int>>.empty();

    Stream<UploadAssetsRequest> requestStream() async* {
      yield UploadAssetsRequest(
        metaData: AssetMetaData(
          taskId: Int64(asset.task.value!.rId!),
          hash: asset.fileId,
          category: asset.cat.name,
          updateAt: Int64(asset.updateAt),
          deleteAt: asset.deleteAt != null
            ? Int64(asset.deleteAt!)
            : null,
        ),
      );
      await for (final chunk in fileStream) {
        yield UploadAssetsRequest(
          chunk: chunk,
        );
      }
    }

    if (asset.rId == null) {
      // create
      final response = await stub.uploadAssets(
        requestStream(),
      );
      _pushResponseController.add(PushResponse(
        localId: asset.id,
        remoteId: response.assetId.toInt(),
      ));
    }
    else if (asset.deleteAt == null) {
      // create as update
      await stub.uploadAssets(
        requestStream(),
      );
    }
    else {
      // delete
      await stub.removeAssets(RemoveAssetsRequest(
        assetId: Int64(asset.rId!),
        deleteAt: Int64(asset.deleteAt!),
      ));
    }
  }

  Future<void> _pushTaskAssignment(TaskAssignment assignment, ClientChannel channel, String? token) async {
    final stub = grpc_taskass.TaskAssignmentClient(
      channel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );

    final awaitProfile = Future(() async {
      if (!assignment.profile.isLoaded) {
        await assignment.profile.load();
      }
      if (assignment.profile.value!.rId == null) {
        final isar = await IsarProvider.instance;
        final profile = isar.profiles.watchObject(assignment.profile.value!.id);
        await profile.firstWhere((element) => element?.rId != null);
        await assignment.profile.load();
      }
    });

    final awaitTask = Future(() async {
      if (!assignment.task.isLoaded) {
        await assignment.task.load();
      }
      if (assignment.task.value!.rId == null) {
        final isar = await IsarProvider.instance;
        final task = isar.tasks.watchObject(assignment.task.value!.id);
        await task.firstWhere((element) => element?.rId != null);
        await assignment.task.load();
      }
    });

    final awaitCategory = Future(() async {
      if (!assignment.category.isLoaded) {
        await assignment.category.load();
      }
      if (assignment.category.value!.rId == null) {
        final isar = await IsarProvider.instance;
        final category = isar.categorys.watchObject(assignment.category.value!.id);
        await category.firstWhere((element) => element?.rId != null);
        await assignment.category.load();
      }
    });

    final awaitTags = Future(() async {
      if (!assignment.tags.isLoaded) {
        await assignment.tags.load();
      }
      final awaitTagRIDs = assignment.tags.map((tag) {
        return Future(() async {
          if (tag.rId == null) {
            final isar = await IsarProvider.instance;
            final localTag = isar.tags.watchObject(tag.id);
            await localTag.firstWhere((element) => element?.rId != null);
          }
        });
      });
      await Future.wait(awaitTagRIDs);
      await assignment.tags.load();
    });

    await Future.wait([
      awaitProfile,
      awaitTask,
      awaitCategory,
      awaitTags,
    ]);

    if (assignment.rId == null) {
      // create
      final response = await stub.createAssignment(grpc_taskass.CreateTaskAssignmentRequest(
        profileId: Int64(assignment.profile.value!.rId!),
        taskId: Int64(assignment.task.value!.rId!),
        status: _getGrpcTaskAssignmentStatus(assignment.status),
        categoryID: Int64(assignment.category.value!.rId!),
        tagIDs: assignment.tags.map((tag) => Int64(tag.rId!)).toList(),
        priority: _getGrpcTaskPriority(assignment.priority),
        starred: assignment.starred,
        archived: assignment.archived,
        shareRecord: assignment.shareRecord,
        postAction: assignment.postAction,
        updateAt: Int64(assignment.updateAt),
        deleteAt: assignment.deleteAt != null
          ? Int64(assignment.deleteAt!)
          : null,
      ));
      _pushResponseController.add(PushResponse(
        localId: assignment.id,
        remoteId: response.assignmentId.toInt(),
      ));
    }
    else if (assignment.deleteAt == null) {
      // modify
      await stub.modifyAssignment(grpc_taskass.ModifyTaskAssignmentRequest(
        assignmentId: Int64(assignment.rId!),
        status: _getGrpcTaskAssignmentStatus(assignment.status),
        categoryID: Int64(assignment.category.value!.rId!),
        tagIDs: assignment.tags.map((tag) => Int64(tag.rId!)).toList(),
        priority: _getGrpcTaskPriority(assignment.priority),
        starred: assignment.starred,
        archived: assignment.archived,
        shareRecord: assignment.shareRecord,
        postAction: assignment.postAction,
        updateAt: Int64(assignment.updateAt),
      ));
    }
    else {
      // delete
      await stub.removeAssignment(grpc_taskass.RemoveTaskAssignmentRequest(
        assignmentId: Int64(assignment.rId!),
        deleteAt: Int64(assignment.deleteAt!),
      ));
    }
  }

  Future<void> _pushTask(Task task, ClientChannel channel, String? token) async {
    final stub = TaskClient(
      channel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );
    
    final awaitProfile = Future(() async {
      if (!task.profile.isLoaded) {
        await task.profile.load();
      }
      if (task.profile.value!.rId == null) {
        final isar = await IsarProvider.instance;
        final profile = isar.profiles.watchObject(task.profile.value!.id);
        await profile.firstWhere((element) => element?.rId != null);
        await task.profile.load();
      }
    });

    final awaitParent = Future(() async {
      if (!task.parent.isLoaded) {
        await task.parent.load();
      }
      if (task.parent.value == null) {
        return;
      }
      else if (task.parent.value!.rId == null) {
        final isar = await IsarProvider.instance;
        final parent = isar.tasks.watchObject(task.parent.value!.id);
        await parent.firstWhere((element) => element?.rId != null);
        await task.parent.load();
      }
    });

    final awaitChannel = Future(() async {
      if (!task.channels.isLoaded) {
        await task.channels.load();
      }
      final awaitChannelRIDs = task.channels.map((channel) {
        return Future(() async {
          if (channel.rId == null) {
            final isar = await IsarProvider.instance;
            final localChannel = isar.channels.watchObject(channel.id);
            await localChannel.firstWhere((element) => element?.rId != null);
          }
        });
      });
      await Future.wait(awaitChannelRIDs);
      await task.channels.load();
    });

    await Future.wait([
      awaitProfile,
      awaitParent,
      awaitChannel,
    ]);

    if (task.rId == null) {
      // create
      final response = await stub.create(CreateTaskRequest(
        profileId: Int64(task.profile.value!.rId!),
        parentId: task.parent.value?.rId != null
          ? Int64(task.parent.value!.rId!)
          : null,
        inherited: task.inherited,
        periodic: task.periodic,
        title: task.title,
        desc: task.desc,
        location: task.location,
        content: task.content,
        specLoc: task.specLoc,
        specTime: task.specTime,
        specAtt: task.specAtt,
        updateAt: Int64(task.updateAt),
        deleteAt: task.deleteAt != null
          ? Int64(task.deleteAt!)
          : null,
      ));
      _pushResponseController.add(PushResponse(
        localId: task.id,
        remoteId: response.taskId.toInt(),
      ));
    }
    else if (task.deleteAt == null) {
      // modify
      await stub.modify(ModifyTaskRequest(
        taskId: Int64(task.rId!),
        parentId: task.parent.value?.rId != null
          ? Int64(task.parent.value!.rId!)
          : null,
        channelIds: task.channels.map((channel) => Int64(channel.rId!)).toList(),
        inherited: task.inherited,
        periodic: task.periodic,
        title: task.title,
        desc: task.desc,
        location: task.location,
        content: task.content,
        specLoc: task.specLoc,
        specTime: task.specTime,
        specAtt: task.specAtt,
        updateAt: Int64(task.updateAt),
      ));
    }
    else {
      // delete
      await stub.remove(RemoveTaskRequest(
        taskId: Int64(task.rId!),
        deleteAt: Int64(task.deleteAt!),
      ));
    }
  }

  Future<void> _fetchProfile(DateTime lastFetchAt, ClientChannel channel, String? token) async {
    final isar = await IsarProvider.instance;

    final authChannel = ClientChannel(
      ConfigRepository.authServerConfig.host,
      port: ConfigRepository.authServerConfig.port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    final userStub = UserClient(
      authChannel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );
    final userResponse = await userStub.info(
      UserInfoRequest(),
    );
    final user = await isar.users.where().rIdEqualTo(userResponse.id.toInt()).findFirst();

    final stub = ProfileClient(
      channel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );

    final response = await stub.getList(GetProfileListRequest(
      lastFetchAt: Int64(lastFetchAt.millisecondsSinceEpoch),
    ));

    final awaitProfiles = response.profiles.map((remoteProfile) {
      return Future(() async {
        final profile = (await isar.profiles.where().rIdEqualTo(remoteProfile.profileId.toInt())
          .findFirst() ?? Profile())
          ..user.value = user
          ..rId = remoteProfile.profileId.toInt()
          ..name = remoteProfile.name
          ..desc = remoteProfile.desc
          ..color = remoteProfile.color
          ..icon = remoteProfile.icon
          ..updateAt = remoteProfile.updateAt.toInt()
          ..deleteAt = remoteProfile.hasDeleteAt()
            ? remoteProfile.deleteAt.toInt()
            : null;
        await isar.writeTxn(() async {
          await isar.profiles.put(profile);
          await profile.user.save();
        });
      });
    });

    await Future.wait(awaitProfiles);
  }

  Future<void> _fetchTag(DateTime lastFetchAt, ClientChannel channel, String? token) async {
    final stub = TagClient(
      channel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );

    final response = await stub.getList(GetTagListRequest(
      lastFetchAt: Int64(lastFetchAt.millisecondsSinceEpoch),
    ));

    final isar = await IsarProvider.instance;

    final awaitTags = response.tags.map((remoteTag) {
      return Future(() async {
        final profile = await isar.profiles.where().rIdEqualTo(remoteTag.profileId.toInt()).findFirst();
        if (profile == null) {
          return;
        }
        final tag = (await isar.tags.where().rIdEqualTo(remoteTag.tagId.toInt())
          .findFirst() ?? Tag())
          ..profile.value = profile
          ..rId = remoteTag.tagId.toInt()
          ..name = remoteTag.name
          ..color = remoteTag.color
          ..icon = remoteTag.icon
          ..updateAt = remoteTag.updateAt.toInt()
          ..deleteAt = remoteTag.hasDeleteAt()
            ? remoteTag.deleteAt.toInt()
            : null;
        await isar.writeTxn(() async {
          await isar.tags.put(tag);
          await tag.profile.save();
        });
      });
    });

    await Future.wait(awaitTags);
  }

  Future<void> _fetchCategories(DateTime lastFetchAt, ClientChannel channel, String? token) async {
    final stub = CategoryClient(
      channel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );

    final response = await stub.getList(GetCategoryListRequest(
      lastFetchAt: Int64(lastFetchAt.millisecondsSinceEpoch),
    ));

    final isar = await IsarProvider.instance;

    final awaitCategories = response.categoryList.map((remoteCategory) {
      return Future(() async {
        final profile = await isar.profiles.where().rIdEqualTo(remoteCategory.profileId.toInt()).findFirst();
        if (profile == null) {
          return;
        }
        final category = (await isar.categorys.where().rIdEqualTo(remoteCategory.id.toInt())
          .findFirst() ?? Category())
          ..profile.value = profile
          ..rId = remoteCategory.id.toInt()
          ..name = remoteCategory.name
          ..desc = remoteCategory.desc
          ..color = remoteCategory.color
          ..icon = remoteCategory.icon
          ..updateAt = remoteCategory.updateAt.toInt()
          ..deleteAt = remoteCategory.hasDeleteAt()
            ? remoteCategory.deleteAt.toInt()
            : null;
        await isar.writeTxn(() async {
          await isar.categorys.put(category);
          await category.profile.save();
        });
      });
    });

    await Future.wait(awaitCategories);
  }

  Future<void> _fetchChannels(DateTime lastFetchAt, ClientChannel channel, String? token) async {
    final stub = grpc_channel.ChannelClient(
      channel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );

    final response = await stub.list(grpc_channel.GetChannelListRequest(
      lastFetchAt: Int64(lastFetchAt.millisecondsSinceEpoch),
    ));

    final isar = await IsarProvider.instance;

    final awaitChannels = response.channelList.map((remoteChannel) {
      return Future(() async {
        final imageRef = await FileProvider.saveCache(bytes: remoteChannel.image);
        final avatarRef = await FileProvider.saveCache(bytes: remoteChannel.avatar);
        final profile = await isar.profiles.where().rIdEqualTo(remoteChannel.profileId.toInt()).findFirst();
        final channel = (await isar.channels.where().rIdEqualTo(remoteChannel.channelId.toInt())
          .findFirst() ?? Channel())
          ..owner.value = profile
          ..rId = remoteChannel.channelId.toInt()
          ..name = remoteChannel.name
          ..desc = remoteChannel.desc
          ..icon = remoteChannel.icon
          ..imgRef = imageRef
          ..avatarRef = avatarRef
          ..type = _getChannelType(remoteChannel.type)
          ..requestData = remoteChannel.reqData
          ..updateAt = remoteChannel.updateAt.toInt()
          ..deleteAt = remoteChannel.hasDeleteAt()
            ? remoteChannel.deleteAt.toInt()
            : null;
        await isar.writeTxn(() async {
          await isar.channels.put(channel);
          await channel.owner.save();
        });
      });
    });

    await Future.wait(awaitChannels);
  }

  Future<void> _fetchTasks(DateTime lastFetchAt, ClientChannel channel, String? token) async {
    final isar = await IsarProvider.instance;

    final authChannel = ClientChannel(
      ConfigRepository.authServerConfig.host,
      port: ConfigRepository.authServerConfig.port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    final userStub = UserClient(
      authChannel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );
    final userResponse = await userStub.info(
      UserInfoRequest(),
    );
    final user = await isar.users.where().rIdEqualTo(userResponse.id.toInt()).findFirst();
    if (user == null) {
      return;
    }

    final stub = grpc_taskass.TaskAssignmentClient(
      channel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': token ?? '',
        },
      ),
    );

    if (!user.profiles.isLoaded) {
      await user.profiles.load();
    }
    await Future.wait(user.profiles.map((profile) {
      return Future(() async {
        if (profile.rId != null) {
          return;
        }
        final profileStub = ProfileClient(
          channel,
          options: CallOptions(
            timeout: const Duration(seconds: 2),
            metadata: {
              'access_token': token ?? '',
            },
          ),
        );
        final profileResponse = await profileStub.create(CreateProfileRequest(
          name: profile.name,
          desc: profile.desc,
          color: profile.color,
          icon: profile.icon,
          updateAt: Int64(profile.updateAt),
          deleteAt: profile.deleteAt != null ? Int64(profile.deleteAt!) : null,
        ));
        await isar.writeTxn(() async {
          await isar.profiles.put(profile..rId = profileResponse.profileId.toInt());
        });
      });
    }));
    await user.profiles.load();

    for (final profile in user.profiles.toList()) {
      final taskAssignmentsWithTasks = await stub.getAssignedTasksWithTaskInfo(grpc_taskass.GetAssignedTasksWithTaskInfoRequest(
        profileId: Int64(profile.rId!),
        lastFetchAt: Int64(lastFetchAt.millisecondsSinceEpoch),
      ));
      
      // store tasks
      await Future.wait(taskAssignmentsWithTasks.taskAssignments.map((ass) {
        return Future(() async {
          final taskInfo = ass.taskInfo;
          final assInfo = ass.assignmentInfo;

          final channels = (await Future.wait(taskInfo.channelIds.map((channel) {
            return Future(() async {
              return await isar.channels.where().rIdEqualTo(channel.toInt()).findFirst();
            });
          })));

          final filteredChannels = <Channel>[];
          for (final channel in channels) {
            if (channel != null) {
              filteredChannels.add(channel);
            }
          }
          
          final localTask = (await isar.tasks.where().rIdEqualTo(taskInfo.taskId.toInt())
            .findFirst() ?? Task())
            ..profile.value = profile
            ..rId = taskInfo.taskId.toInt()
            ..channels.clear()
            ..channels.addAll(filteredChannels)
            ..inherited = taskInfo.inherited
            ..periodic = taskInfo.periodic
            ..title = taskInfo.title
            ..desc = taskInfo.desc
            ..location = taskInfo.location
            ..content = taskInfo.content
            ..specLoc = taskInfo.specLoc
            ..specTime = taskInfo.specTime
            ..specAtt = taskInfo.specAtt
            ..updateAt = taskInfo.updateAt.toInt()
            ..deleteAt = taskInfo.hasDeleteAt() ? taskInfo.deleteAt.toInt() : null;
          
          await isar.writeTxn(() async {
            await isar.tasks.put(localTask);
            await localTask.profile.save();
            await localTask.channels.save();
          });

          final localAssignment = (await isar.taskAssignments.where().rIdEqualTo(assInfo.assignmentId.toInt())
            .findFirst() ?? TaskAssignment())
            ..rId = assInfo.assignmentId.toInt()
            ..status = _getTaskAssignmentStatus(assInfo.status)
            ..priority = _getTaskPriority(assInfo.priority)
            ..starred = assInfo.starred
            ..archived = assInfo.archived
            ..shareRecord = assInfo.shareRecord
            ..postAction = assInfo.postAction
            ..updateAt = assInfo.updateAt.toInt()
            ..deleteAt = assInfo.hasDeleteAt() ? assInfo.deleteAt.toInt() : null;
        });
      }));
    }
  }

  void dispose() {
    _connectivitySubscription.cancel();
    _fetchRequestSubscription?.cancel();
    _fetchTimer?.cancel();
    _pushController.close();
    _fetchDataController.close();
  }

  ChannelType _getChannelType(grpc_channel.ChannelType? type) {
    switch (type) {
      case grpc_channel.ChannelType.PRIVATE:
        return ChannelType.private;
      case grpc_channel.ChannelType.INVITED:
        return ChannelType.invited;
      case grpc_channel.ChannelType.PUBLIC:
        return ChannelType.public;
      default:
        return ChannelType.public;
    }
  }

  grpc_channel.ChannelType _getGrpcChannelType(ChannelType type) {
    switch (type) {
      case ChannelType.private:
        return grpc_channel.ChannelType.PRIVATE;
      case ChannelType.invited:
        return grpc_channel.ChannelType.INVITED;
      case ChannelType.public:
        return grpc_channel.ChannelType.PUBLIC;
      default:
        return grpc_channel.ChannelType.PUBLIC;
    }
  }

  SubscriptionType _getSubscriptionType(grpc_channel.SubscriptionType? type) {
    switch (type) {
      case grpc_channel.SubscriptionType.AUTOACCEPT:
        return SubscriptionType.autoAccept;
      case grpc_channel.SubscriptionType.NORMAL:
        return SubscriptionType.normal;
      case grpc_channel.SubscriptionType.AUTOREJECT:
        return SubscriptionType.autoReject;
      default:
        return SubscriptionType.normal;
    }
  }

  grpc_channel.SubscriptionType _getGrpcSubscriptionType(SubscriptionType type) {
    switch (type) {
      case SubscriptionType.autoAccept:
        return grpc_channel.SubscriptionType.AUTOACCEPT;
      case SubscriptionType.normal:
        return grpc_channel.SubscriptionType.NORMAL;
      case SubscriptionType.autoReject:
        return grpc_channel.SubscriptionType.AUTOREJECT;
      default:
        return grpc_channel.SubscriptionType.NORMAL;
    }
  }

  TaskAssignmentStatus _getTaskAssignmentStatus(grpc_taskass.TaskAssignmentStatus status) {
    switch (status) {
      case grpc_taskass.TaskAssignmentStatus.ACCEPTED:
        return TaskAssignmentStatus.accepted;
      case grpc_taskass.TaskAssignmentStatus.REJECTED:
        return TaskAssignmentStatus.rejected;
      default:
        return TaskAssignmentStatus.accepted;
    }
  }

  grpc_taskass.TaskAssignmentStatus _getGrpcTaskAssignmentStatus(TaskAssignmentStatus status) {
    switch (status) {
      case TaskAssignmentStatus.accepted:
        return grpc_taskass.TaskAssignmentStatus.ACCEPTED;
      case TaskAssignmentStatus.rejected:
        return grpc_taskass.TaskAssignmentStatus.REJECTED;
      default:
        return grpc_taskass.TaskAssignmentStatus.ACCEPTED;
    }
  }

  TaskPriority _getTaskPriority(grpc_taskass.TaskPriority priority) {
    switch (priority) {
      case grpc_taskass.TaskPriority.NONE:
        return TaskPriority.none;
      case grpc_taskass.TaskPriority.LOW:
        return TaskPriority.low;
      case grpc_taskass.TaskPriority.MEDIUM:
        return TaskPriority.medium;
      case grpc_taskass.TaskPriority.HIGH:
        return TaskPriority.high;
      case grpc_taskass.TaskPriority.URGENT:
        return TaskPriority.urgent;
      default:
        return TaskPriority.low;
    }
  }

  grpc_taskass.TaskPriority _getGrpcTaskPriority(TaskPriority priority) {
    switch (priority) {
      case TaskPriority.none:
        return grpc_taskass.TaskPriority.NONE;
      case TaskPriority.low:
        return grpc_taskass.TaskPriority.LOW;
      case TaskPriority.medium:
        return grpc_taskass.TaskPriority.MEDIUM;
      case TaskPriority.high:
        return grpc_taskass.TaskPriority.HIGH;
      case TaskPriority.urgent:
        return grpc_taskass.TaskPriority.URGENT;
      default:
        return grpc_taskass.TaskPriority.LOW;
    }
  }

}
