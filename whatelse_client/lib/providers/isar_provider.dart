import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:whatelse_client/generated/isar/category.dart';
import 'package:whatelse_client/generated/isar/channel.dart';
import 'package:whatelse_client/generated/isar/channel_subscription.dart';
import 'package:whatelse_client/generated/isar/credential.dart';
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

class IsarProvider {
  static final IsarProvider _singleton = IsarProvider._internal();

  IsarProvider._internal();

  final Future<Isar> isar = Future(() async {
    final dir = await getApplicationDocumentsDirectory();
    return await Isar.open(
      [
        CategorySchema,
        ChannelSubscriptionSchema,
        ChannelSchema,
        CredentialSchema,
        ProfileSchema,
        ScheduleSchema,
        SessionRecordAttachmentSchema,
        SessionRecordSchema,
        SessionSchema,
        TagSchema,
        TaskAssetSchema,
        TaskAssignmentSchema,
        TaskSchema,
        UserSchema,
      ],
      directory: dir.path
    );
  });

  static Future<Isar> get instance {
    return _singleton.isar;
  }
}