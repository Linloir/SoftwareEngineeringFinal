import 'dart:async';
import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:isar/isar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whatelse_client/generated/grpc/src/auth.pbgrpc.dart';
import 'package:whatelse_client/generated/grpc/src/profile.pbgrpc.dart';
import 'package:whatelse_client/generated/grpc/src/user.pbgrpc.dart';
import 'package:whatelse_client/generated/isar/credential.dart';
import 'package:whatelse_client/generated/isar/profile.dart';
import 'package:whatelse_client/generated/isar/user.dart';
import 'package:whatelse_client/providers/file_provider.dart';
import 'package:whatelse_client/providers/isar_provider.dart';
import 'package:whatelse_client/repositories/config/config_repository.dart';
import 'package:whatelse_client/utils/user_claim.dart';

/// The authentication status of the whole program
/// 
/// [local] means the user uses local account.
/// 
/// [authenticated] means the user is authenticated.
/// 
/// [expired] means the user is currently authenticated, but the
/// log session has expired. The user will need to log in again.
/// 
/// [unauthenticated] means the user is not authenticated.
/// This happens when the user manually logs out, or
/// the user has never logged in.
enum AuthStatus {
  local,
  authenticated,
  expired,
  unauthenticated,
}

/// The events of logging in
/// 
/// [internalError] means that the login failed,
/// this usually happens due to internal error.
/// 
/// [unknownError] means that the login failed due to
/// unknown error.
/// 
/// [networkError] means that the login failed due to
/// network error.
/// 
/// [invalidCredentials] means that the userclaim does
/// not exist, or the password is incorrect.
/// 
/// [success] means that the user is successfully authenticated.
enum LogEvent {
  internalError,
  unknownError,
  networkError,
  invalidCredentials,
  success;

  /// Returns the error message of the event
  String? get message {
    switch (this) {
      case LogEvent.internalError:
        return 'error.internal'.tr();
      case LogEvent.unknownError:
        return 'error.unknown'.tr();
      case LogEvent.networkError:
        return 'error.network'.tr();
      case LogEvent.invalidCredentials:
        return 'error.invalid_credentials'.tr();
      case LogEvent.success:
        return null;
    }
  }
}

/// The events of checking the validity of
/// the userclaim during registration
/// 
/// [internalError] means that the check failed due to
/// internal error.
/// 
/// [invalidArgument] means that the userclaim is invalid.
/// 
/// [alreadyExists] means that the userclaim already exists.
/// 
/// [success] means that the userclaim is valid.
enum RegUserClaimCheckEvent {
  internalError,
  invalidArgument,
  alreadyExists,
  success;

  /// Returns the error message of the event
  String get message {
    switch (this) {
      case RegUserClaimCheckEvent.internalError:
        return 'reg.userclaim.error.internal_error'.tr();
      case RegUserClaimCheckEvent.invalidArgument:
        return 'reg.userclaim.error.invalid_argument'.tr();
      case RegUserClaimCheckEvent.alreadyExists:
        return 'reg.userclaim.error.already_exists'.tr();
      case RegUserClaimCheckEvent.success:
        return 'reg.userclaim.error.success'.tr();
    }
  }
}

/// The events of requesting a verification code
/// 
/// [requestTooFrequentError] means that the user has
/// requested a verification code too frequently.
/// 
/// [requestFailedError] means that the request failed,
/// this usually happens due to internal error.
/// 
/// [sent] means that the verification code has been sent.
/// 
/// [invalidCode] means that the verification code is invalid.
/// 
/// [success] means that the verification code is valid.
enum VerifCodeRequestEvent {
  requestTooFrequentError,
  requestFailedError,
  sent,
  invalidCode,
  success;

  /// Returns the error message of the event
  String get message {
    switch (this) {
      case VerifCodeRequestEvent.requestTooFrequentError:
        return 'reg.verifcode.error.request_too_frequent_error'.tr();
      case VerifCodeRequestEvent.requestFailedError:
        return 'reg.verifcode.error.request_failed_error'.tr();
      case VerifCodeRequestEvent.sent:
        return 'reg.verifcode.error.sent'.tr();
      case VerifCodeRequestEvent.invalidCode:
        return 'reg.verifcode.error.invalid_code'.tr();
      case VerifCodeRequestEvent.success:
        return 'reg.verifcode.error.success'.tr();
    }
  }
}

/// The events of registering a new user
/// 
/// [internalError] means that the registration failed,
/// this usually happens due to internal error.
/// 
/// [networkError] means that the registration failed due to
/// network error.
/// 
/// [success] means that the registration is successful
enum RegEvent {
  internalError,
  networkError,
  success;

  /// Returns the error message of the event
  String get message {
    switch (this) {
      case RegEvent.internalError:
        return 'reg.userinfo.error.internal_error'.tr();
      case RegEvent.networkError:
        return 'reg.userinfo.error.network_error'.tr();
      case RegEvent.success:
        return 'reg.userinfo.error.success'.tr();
    }
  }
}

/// The events of the main flow
/// 
/// [requestMerge] means that the local account and the
/// remote account should be merged.
enum MainEvent {
  requestMerge,
}

/// A singleton repository that handles authentication of the whole program
class AuthRepository {
  static final _singleton = AuthRepository._init();

  AuthRepository._internal({
    required StreamController<AuthStatus> authStatusController,
    required StreamController<LogEvent> logEventController,
    required StreamController<RegUserClaimCheckEvent> regUserClaimCheckEventController,
    required StreamController<VerifCodeRequestEvent> verifCodeRequestEventController,
    required StreamController<RegEvent> regEventController,
    required StreamController<MainEvent> mainEventController,
    required ClientChannel authChannel,
    required ClientChannel mainChannel,
    required Future<Isar> isar,
  }): _authStatusController = authStatusController,
      _logEventController = logEventController,
      _regUserClaimCheckEventController = regUserClaimCheckEventController,
      _verifCodeRequestEventController = verifCodeRequestEventController,
      _regEventController = regEventController,
      _mainEventController = mainEventController,
      _authChannel = authChannel,
      _mainChannel = mainChannel,
      _isar = isar;

  factory AuthRepository._init() {
    final authStatusController = StreamController<AuthStatus>.broadcast();
    final logEventController = StreamController<LogEvent>.broadcast();
    final regUserClaimCheckEventController = StreamController<RegUserClaimCheckEvent>.broadcast();
    final verifCodeRequestEventController = StreamController<VerifCodeRequestEvent>.broadcast();
    final regEventController = StreamController<RegEvent>.broadcast();
    final mainEventController = StreamController<MainEvent>.broadcast();
    final authChannel = ClientChannel(
      ConfigRepository.authServerConfig.host,
      port: ConfigRepository.authServerConfig.port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    final mainChannel = ClientChannel(
      ConfigRepository.mainServerConfig.host,
      port: ConfigRepository.mainServerConfig.port,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );
    final isar = IsarProvider.instance;

    return AuthRepository._internal(
      authStatusController: authStatusController,
      logEventController: logEventController,
      regUserClaimCheckEventController: regUserClaimCheckEventController,
      verifCodeRequestEventController: verifCodeRequestEventController,
      regEventController: regEventController,
      mainEventController: mainEventController,
      authChannel: authChannel,
      mainChannel: mainChannel,
      isar: isar,
    );
  }

  factory AuthRepository() {
    return _singleton;
  }

  final StreamController<AuthStatus> _authStatusController;
  final StreamController<LogEvent> _logEventController;
  final StreamController<RegUserClaimCheckEvent> _regUserClaimCheckEventController;
  final StreamController<VerifCodeRequestEvent> _verifCodeRequestEventController;
  final StreamController<RegEvent> _regEventController;
  final StreamController<MainEvent> _mainEventController;
  final ClientChannel _authChannel;
  final ClientChannel _mainChannel;
  final Future<Isar> _isar;

  Future<void> _syncUserProfile({
    required String accessToken,
  }) async {
    // fetch user info
    final isar = await _isar;
    final userStub = UserClient(
      _authChannel,
      options: CallOptions(
        timeout: const Duration(milliseconds: 800),
        metadata: {
          'access_token': accessToken,
        }
      ),
    );
    final userResponse = await userStub.info(
      UserInfoRequest(),
    );

    // fetch profile info
    final profileStub = ProfileClient(
      _mainChannel,
      options: CallOptions(
        timeout: const Duration(seconds: 2),
        metadata: {
          'access_token': accessToken,
        }
      ),
    );
    final profileResponse = await profileStub.getList(
      GetProfileListRequest(),
    );

    // write database
    await isar.writeTxn(() async {
      var user = (await isar.users.where().rIdEqualTo(userResponse.id.toInt()).findFirst()) ?? User()
        ..rId = userResponse.id.toInt()
        ..name = userResponse.name
        ..email = userResponse.email
        ..phone = userResponse.phone;

      // save avatar
      if (userResponse.hasAvatar() && userResponse.avatar.isNotEmpty) {
        user.avatarRef = await FileProvider.saveCache(bytes: userResponse.avatar);
      }

      // save user
      await isar.users.put(user);

      // save profiles
      for (var remoteProfile in profileResponse.profiles) {
        var profile = (await isar.profiles.where().rIdEqualTo(remoteProfile.profileId.toInt()).findFirst()) ?? Profile()
          ..user.value = user
          ..rId = remoteProfile.profileId.toInt()
          ..name = remoteProfile.name
          ..desc = remoteProfile.desc
          ..icon = remoteProfile.icon
          ..color = remoteProfile.color
          ..updateAt = remoteProfile.updateAt.toInt();
      
        await isar.profiles.put(profile);
        await profile.user.save();
      }
    });

    // check for local storage
    final hasLocal = await isar.users.where().rIdIsNull().isNotEmpty();
    if (hasLocal) {
      _mainEventController.add(MainEvent.requestMerge);
    }
  }

  /// Log in with [userClaim] and [password] and return the authentication status
  /// through [authStatus].
  /// 
  /// If [storeCredentials] is true, the user credentials will
  /// be stored in Isar, and will be shown when the user manually
  /// logs out and tries to log in again.
  /// 
  /// As [storeCredentials] controls whether [userClaim] and [password]
  /// are stored in Isar, the credentials are default and enforced
  /// to be stored in Shared Preferences.
  /// 
  /// By storing the credentials in shared preferences, it's able to provide
  /// auto refresh feature for the refresh token. For safety, the credentials
  /// are be removed as soon as any of [logOutDirty] or [logOutClean]
  /// is called.
  Future<void> logIn({
    required String userClaim,
    required String password,
    bool storeCredentials = false,
  }) async {
    try {
      // request remote grpc endpoint for authentication
      final stub = AuthClient(
        _authChannel,
        options: CallOptions(
          timeout: const Duration(seconds: 5),
        ),
      );
      final response = await stub.authenticate(
        AuthRequest(
          identifier: userClaim,
          password: password,
        ),
      );

      // store the credentials to shared preferences
      final prefs = await SharedPreferences.getInstance();
      final prefStoreJobs = <Future>[];
      prefStoreJobs.add(prefs.setString('userClaim', userClaim));
      prefStoreJobs.add(prefs.setString('password', password));
      prefStoreJobs.add(prefs.setString('accessToken', response.accessToken));
      prefStoreJobs.add(prefs.setString('refreshToken', response.refreshToken));
      await Future.wait(prefStoreJobs);

      // store the credentials to isar
      if (storeCredentials) {
        final isar = await _isar;
        final credential = Credential()
          ..userClaim = userClaim
          ..password = password;
        await isar.writeTxn(() async {
          await isar.credentials.put(credential);
        });
      }
      else {
        // remove the credentials from isar where the user claim is the same
        final isar = await _isar;
        await isar.writeTxn(() async {
          await isar.credentials.deleteByUserClaim(userClaim);
        });
      }

      // sync user profile
      await _syncUserProfile(accessToken: response.accessToken);

      // emit the authentication status
      _logEventController.add(LogEvent.success);
    } on GrpcError catch (e) {
      switch (e.code) {
        case StatusCode.internal:
          _logEventController.add(LogEvent.internalError);
          break;
        case StatusCode.permissionDenied:
          _logEventController.add(LogEvent.invalidCredentials);
          break;
        case StatusCode.unavailable:
          _logEventController.add(LogEvent.networkError);
          break;
        default:
          _logEventController.add(LogEvent.unknownError);
          break;
      }
    } catch (e) {
      _logEventController.add(LogEvent.unknownError);
    }
  }

  /// Log out while keeping the stored credentials in Isar.
  /// 
  /// While preserving the user credentials in Isar,
  /// the tokens stored in Shared Preferences are removed,
  /// as well as the user credentials that are stored in Shared Preferences.
  /// 
  /// This is useful when user manually logs out.
  Future<void> logOutDirty() async {
    try {
      // query shared preferences for the refresh token
      final prefs = await SharedPreferences.getInstance();
      final refreshToken = prefs.getString('refreshToken') ?? '';

      // request remote grpc endpoint for authentication
      final stub = AuthClient(
        _authChannel,
        options: CallOptions(
          timeout: const Duration(milliseconds: 800),
        ),
      );
      await stub.revokeAuth(
        RevokeAuthRequest(
          refreshToken: refreshToken,
        ),
      );

      // remove the credentials from shared preferences
      final prefRemoveJobs = <Future>[];
      prefRemoveJobs.add(prefs.remove('userClaim'));
      prefRemoveJobs.add(prefs.remove('password'));
      prefRemoveJobs.add(prefs.remove('accessToken'));
      prefRemoveJobs.add(prefs.remove('refreshToken'));
      await Future.wait(prefRemoveJobs);

      // emit the authentication status
      _authStatusController.add(AuthStatus.unauthenticated);
    } on GrpcError catch (e) {
      switch (e.code) {
        case StatusCode.unavailable:
        case StatusCode.deadlineExceeded:
          // query shared preferences for the refresh token
          final prefs = await SharedPreferences.getInstance();
          // remove the credentials from shared preferences
          final prefRemoveJobs = <Future>[];
          prefRemoveJobs.add(prefs.remove('userClaim'));
          prefRemoveJobs.add(prefs.remove('password'));
          prefRemoveJobs.add(prefs.remove('accessToken'));
          prefRemoveJobs.add(prefs.remove('refreshToken'));
          await Future.wait(prefRemoveJobs);

          _authStatusController.add(AuthStatus.unauthenticated);
          break;
        default:
          _authStatusController.addError(e);
          break;
      }
    }
  }

  /// Log out while removing the stored credentials in Isar.
  /// 
  /// While removing the user credentials in Isar,
  /// the tokens stored in Shared Preferences are removed,
  /// as well as the user credentials that are stored in Shared Preferences.
  /// 
  /// This is useful when a refresh token is forbidden, or expired.
  Future<void> logOutClean() async {
    try {
      // query shared preferences for the refresh token and user claim
      final prefs = await SharedPreferences.getInstance();
      final refreshToken = prefs.getString('refreshToken') ?? '';
      final userClaim = prefs.getString('userClaim');

      // request remote grpc endpoint for authentication
      final stub = AuthClient(
        _authChannel,
        options: CallOptions(
          timeout: const Duration(milliseconds: 800),
        ),
      );
      await stub.revokeAuth(
        RevokeAuthRequest(
          refreshToken: refreshToken,
        ),
      );

      // remove the credentials from shared preferences
      final prefRemoveJobs = <Future>[];
      prefRemoveJobs.add(prefs.remove('userClaim'));
      prefRemoveJobs.add(prefs.remove('password'));
      prefRemoveJobs.add(prefs.remove('accessToken'));
      prefRemoveJobs.add(prefs.remove('refreshToken'));
      await Future.wait(prefRemoveJobs);

      // remove the credentials from isar
      if (userClaim != null) {
        final isar = await _isar;
        await isar.credentials.deleteByUserClaim(userClaim);
      }

      // emit the authentication status
      _authStatusController.add(AuthStatus.unauthenticated);
    } on GrpcError catch (e) {
      switch (e.code) {
        case StatusCode.unavailable:
        case StatusCode.deadlineExceeded:
          // query shared preferences for the refresh token
          final prefs = await SharedPreferences.getInstance();
          final userClaim = prefs.getString('userClaim');
          // remove the credentials from shared preferences
          final prefRemoveJobs = <Future>[];
          prefRemoveJobs.add(prefs.remove('userClaim'));
          prefRemoveJobs.add(prefs.remove('password'));
          prefRemoveJobs.add(prefs.remove('accessToken'));
          prefRemoveJobs.add(prefs.remove('refreshToken'));
          await Future.wait(prefRemoveJobs);

          // remove the credentials from isar
          if (userClaim != null) {
            final isar = await _isar;
            await isar.credentials.deleteByUserClaim(userClaim);
          }

          _authStatusController.add(AuthStatus.unauthenticated);
          break;

        default:
          _authStatusController.addError(e);
          break;
      }
    }
  }

  /// Refresh the access token using the refresh token.
  /// 
  /// Queries Shared Preferences for the refresh token,
  /// updates the access token, and stores the new token in Shared Preferences.
  Future<void> refreshAccessToken() async {
    try {
      final completer = Completer<void>();

      Future<void> refresh() async {
        try {
          // query shared preferences for the refresh token
          final prefs = await SharedPreferences.getInstance();
          final refreshToken = prefs.getString('refreshToken') ?? '';

          // check connectivity
          final connectivity = await Connectivity().checkConnectivity();
          if (connectivity == ConnectivityResult.none) {
            // no connectivity, emit the local status
            _authStatusController.add(AuthStatus.authenticated);
            // await for connectivity
            await Connectivity().onConnectivityChanged.firstWhere((event) => event != ConnectivityResult.none);
          }

          // request remote grpc endpoint for authentication
          final stub = AuthClient(
            _authChannel,
            options: CallOptions(
              timeout: const Duration(seconds: 2),
            ),
          );
          final response = await stub.renewAuthN(
            RenewAuthNRequest(
              refreshToken: refreshToken,
            ),
          );

          // store the new access token in shared preferences
          await prefs.setString('accessToken', response.accessToken);

          completer.complete();
        } on GrpcError catch (e) {
          switch (e.code) {
            case StatusCode.unavailable:
            case StatusCode.deadlineExceeded:
              // ignore
              break;
            default:
              rethrow;
          }
        } on SocketException catch (_) {
          // ignore
        }
      }

      while (!completer.isCompleted) {
        await refresh();
        await Future.delayed(const Duration(seconds: 1));
      }
    } on GrpcError catch (_) {
      // the refresh token is either expired or invalid
      // log out and remove the credentials
      await logOutClean();
    }
  }

  /// Refresh the authentication and updates refresh token
  /// and access token.
  /// 
  /// Uses userClaim and password stored in shared preferences
  /// and the refresh token to refresh the authentication.
  /// 
  /// The new refresh token and access token are stored back
  /// in shared preferences.
  Future<void> refreshAuth() async {
    try {
      // query isar service for existence of local user
      final isar = await _isar;
      final hasLocal = await isar.users.where().rIdIsNull().isNotEmpty();

      // query shared preferences for the refresh token and user credential
      final prefs = await SharedPreferences.getInstance();
      // test if the user has logged in before and is the credentials valid
      if (!prefs.containsKey('userClaim') || !prefs.containsKey('refreshToken') || !prefs.containsKey('accessToken')) {
        if (hasLocal) {
          // local user exists, emit the local status
          _authStatusController.add(AuthStatus.local);
        }
        else {
          _authStatusController.add(AuthStatus.unauthenticated);
        }
        return;
      }
      final refreshToken = prefs.getString('refreshToken') ?? '';
      final userClaim = prefs.getString('userClaim') ?? '';
      final password = prefs.getString('password') ?? '';

      // check connectivity
      final connectivity = await Connectivity().checkConnectivity();
      if (connectivity == ConnectivityResult.none) {
        // no connectivity, emit the local status
        _authStatusController.add(AuthStatus.authenticated);
        // await for connectivity
        await Connectivity().onConnectivityChanged.firstWhere((event) => event != ConnectivityResult.none);
      }
      
      // request remote grpc endpoint for authentication
      final stub = AuthClient(
        _authChannel,
        options: CallOptions(
          timeout: const Duration(seconds: 2),
        ),
      );
      final response = await stub.renewAuthZ(
        RenewAuthZRequest(
          identifier: userClaim,
          password: password,
          refreshToken: refreshToken,
        ),
      );

      // store the credentials to shared preferences
      final prefStoreJobs = <Future>[];
      prefStoreJobs.add(prefs.setString('accessToken', response.accessToken));
      prefStoreJobs.add(prefs.setString('refreshToken', response.refreshToken));
      await Future.wait(prefStoreJobs);
      
      // sync user profile
      await _syncUserProfile(accessToken: response.accessToken);

      // emit the authentication status
      _authStatusController.add(AuthStatus.authenticated);
    } on GrpcError catch (e) {
      switch (e.code) {
        case StatusCode.permissionDenied:
          await onInvalidCredentials(logout: false);
          break;
        case StatusCode.unauthenticated:
          await onExpiredCredentials(logout: false);
          break;
        case StatusCode.invalidArgument:
          await onInvalidCredentials(logout: false);
          break;
        case StatusCode.unavailable:
        case StatusCode.deadlineExceeded:
          // retry after 5 seconds
          _authStatusController.add(AuthStatus.authenticated);
          Timer(
            const Duration(seconds: 5), 
            () {
              refreshAuth();
            }
          );
          break;
        default:
          _authStatusController.addError(e);
          break;
      }
    }
  }

  Future<void> checkUserClaim({required String userClaim}) async {
    try {
      final stub = UserClient(
        _authChannel,
        options: CallOptions(
          timeout: const Duration(seconds: 5),
        ),
      );
      
      final res = await stub.checkClaim(
        UserCheckClaimRequest(
          userClaim: userClaim,
        ),
      );
      
      if (res.exists) {
        _regUserClaimCheckEventController.add(RegUserClaimCheckEvent.alreadyExists);
      } else {
        _regUserClaimCheckEventController.add(RegUserClaimCheckEvent.success);
      }
    } on GrpcError catch (e) {
      switch (e.code) {
        case StatusCode.invalidArgument:
          _regUserClaimCheckEventController.add(RegUserClaimCheckEvent.invalidArgument);
          break;
        default:
          _regUserClaimCheckEventController.add(RegUserClaimCheckEvent.internalError);
          break;
      }
    } catch (e) {
      _regUserClaimCheckEventController.add(RegUserClaimCheckEvent.internalError);
    }
  }

  Future<void> requestVerifCode({required String userClaim}) async {
    try {
      final stub = AuthClient(
        _authChannel,
        options: CallOptions(
          timeout: const Duration(seconds: 5),
        ),
      );

      await stub.requestVerif(
        RequestVerifRequest(
          userClaim: userClaim,
        ),
      );

      _verifCodeRequestEventController.add(VerifCodeRequestEvent.sent);
    } on GrpcError catch (e) {
      switch (e.code) {
        case StatusCode.alreadyExists:
          _verifCodeRequestEventController.add(VerifCodeRequestEvent.requestTooFrequentError);
          break;
        default:
          _verifCodeRequestEventController.add(VerifCodeRequestEvent.requestFailedError);
          break;
      }
    } catch (e) {
      _verifCodeRequestEventController.add(VerifCodeRequestEvent.requestFailedError);
    }
  }

  Future<void> validateVerifCode({required String userClaim, required String verifCode}) async {
    try {
      final stub = AuthClient(
        _authChannel,
        options: CallOptions(
          timeout: const Duration(seconds: 5),
        ),
      );

      await stub.validateVerif(
        ValidateVerifRequest(
          userClaim: userClaim,
          verifCode: verifCode,
        ),
      );

      _verifCodeRequestEventController.add(VerifCodeRequestEvent.success);
    } on GrpcError catch (e) {
      switch (e.code) {
        case StatusCode.notFound:
        case StatusCode.permissionDenied:
          _verifCodeRequestEventController.add(VerifCodeRequestEvent.invalidCode);
          break;
        default:
          _verifCodeRequestEventController.add(VerifCodeRequestEvent.requestFailedError);
          break;
      }
    } catch (e) {
      _verifCodeRequestEventController.add(VerifCodeRequestEvent.requestFailedError);
    }
  }

  Future<void> register({
    required String userClaim,
    required String password,
    required String username,
  }) async {
    try {
      final stub = UserClient(
        _authChannel,
        options: CallOptions(
          timeout: const Duration(seconds: 5),
        ),
      );
      
      await stub.register(
        UserRegisterRequest(
          identifier: userClaim,
          password: password,
          username: username,
        ),
      );

      _regEventController.add(RegEvent.success);
    } on GrpcError catch (e) {
      switch (e.code) {
        case StatusCode.unavailable:
          _regEventController.add(RegEvent.networkError);
          break;
        default:
          _regEventController.add(RegEvent.internalError);
          break;
      }
    } catch (e) {
      _regEventController.add(RegEvent.internalError);
    }
  }

  /// Emits the authentication status of expired credentials, and
  /// logs out if [logout] set.
  Future<void> onExpiredCredentials({bool logout = true}) async {
    _authStatusController.add(AuthStatus.expired);
    if (logout) {
      await logOutDirty();
    }
  }

  /// Emits the authentication status of invalid credentials, and
  /// logs out if [logout] set.
  Future<void> onInvalidCredentials({bool logout = true}) async {
    _authStatusController.add(AuthStatus.expired);
    if (logout) {
      await logOutDirty();
    }
  }

  /// Prepare the local account for local usage.
  /// 
  /// [initLocalAccount] checks if the local account is already initialized,
  /// and if not, it will create a new local account.
  /// 
  /// After the local account is initialized, the [AuthStatus.local] status
  /// will be emitted.
  Future<void> initLocalAccount() async {
    final isar = await _isar;
    final hasLocal = await isar.users.where().rIdIsNull().isNotEmpty();
    if (!hasLocal) {
      // Create a local user
      final localUser = User()
        ..rId = null
        ..name = 'local'
        ..phone = null
        ..email = null;
      await isar.writeTxn(() async {
        await isar.users.put(localUser);
      });

      // Create a local profile
      final localProfile = Profile()
        ..user.value = localUser
        ..rId = null
        ..name = 'profile.default.name'.tr()
        ..desc = 'profile.default.desc'.tr()
        ..color = Colors.blue.value
        ..icon = ':book:'
        ..updateAt = DateTime.now().millisecondsSinceEpoch;
      await isar.writeTxn(() async {
        await isar.profiles.put(localProfile);
        await localProfile.user.save();
      });
    }
    _authStatusController.add(AuthStatus.local);
  }

  Future<void> mergeLocalAccount() async {
    final isar = await _isar;

    // load local user
    final localUser = await isar.users.where().rIdIsNull().findFirst();
    if (localUser == null) {
      return;
    }

    // load current user
    final prefs = await SharedPreferences.getInstance();
    final userClaim = prefs.getString('userClaim');
    if (userClaim == null) {
      return;
    }
    User? currentUser;
    if (getClaimType(userClaim) == UserClaimType.email) {
      currentUser = await isar.users.where().emailEqualTo(userClaim).findFirst();
    } else if (getClaimType(userClaim) == UserClaimType.phone) {
      currentUser = await isar.users.where().phoneEqualTo(userClaim).findFirst();
    } else {
      return;
    }
    if (currentUser == null) {
      return;
    }

    // merge profiles
    await localUser.profiles.load();
    await currentUser.profiles.load();
    final currentProfileNames = currentUser.profiles.map((e) => e.name).toSet();
    final localProfile = localUser.profiles.toList();
    for (final profile in localProfile) {
      while (currentProfileNames.contains(profile.name)) {
        profile.name = '${profile.name} (${'profile_local_suffix'.tr()})';
      }
      profile.user.value = currentUser;
      await isar.writeTxn(() async {
        await isar.profiles.put(profile);
        await profile.user.save();
      });
    }

    // delete local user
    await isar.writeTxn(() async {
      await isar.users.delete(localUser.id);
    });
  }

  Future<void> removeLocalAccount() async {
    final isar = await _isar;
    final localUser = await isar.users.where().rIdIsNull().findFirst();
    if (localUser == null) {
      return;
    }
    await isar.writeTxn(() async {
      await isar.users.delete(localUser.id);
    });
  }

  /// Get the current authentication status.
  /// 
  /// The [authStatus] contains either the streamed authentication status,
  /// but also the errors occurred during the authentication process.
  /// 
  /// The listener block should handle the errors and display useful messages.
  Stream<AuthStatus> get authStatus async* {
    refreshAuth();
    yield* _authStatusController.stream;
  }

  Stream<LogEvent> get logEvents async* {
    yield* _logEventController.stream;
  }

  Stream<RegUserClaimCheckEvent> get regUserClaimCheckEvents async* {
    yield* _regUserClaimCheckEventController.stream;
  }

  Stream<VerifCodeRequestEvent> get verifCodeRequestEvents async* {
    yield* _verifCodeRequestEventController.stream;
  }

  Stream<RegEvent> get regEvents async* {
    yield* _regEventController.stream;
  }

  Stream<MainEvent> get mainEvents async* {
    yield* _mainEventController.stream;
  }
}
