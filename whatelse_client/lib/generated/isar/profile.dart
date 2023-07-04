import 'package:isar/isar.dart';
import 'package:whatelse_client/generated/isar/category.dart';
import 'package:whatelse_client/generated/isar/channel.dart';
import 'package:whatelse_client/generated/isar/channel_subscription.dart';
import 'package:whatelse_client/generated/isar/schedule.dart';
import 'package:whatelse_client/generated/isar/session_record.dart';
import 'package:whatelse_client/generated/isar/tag.dart';
import 'package:whatelse_client/generated/isar/task.dart';
import 'package:whatelse_client/generated/isar/task_assignment.dart';
import 'package:whatelse_client/generated/isar/user.dart';

part 'profile.g.dart';

@collection
class Profile {
  Id id = Isar.autoIncrement;

  final user = IsarLink<User>();

  @Index(unique: false)
  int? rId;

  late String name;

  String? desc;

  late int color;

  late String icon;

  /// The last update timestamp of this profile.
  /// 
  /// [updateAt] value might be greater than [fetchAt] value
  /// when the profile is updated locally but not synced to
  /// the server.
  int updateAt = DateTime.now().millisecondsSinceEpoch;
  
  int? deleteAt;

  @Backlink(to: 'profile')
  final tasks = IsarLinks<Task>();

  @Backlink(to: 'owner')
  final channels = IsarLinks<Channel>();

  @Backlink(to: 'profile')
  final subscriptions = IsarLinks<ChannelSubscription>();

  @Backlink(to: 'profile')
  final sessionRecords = IsarLinks<SessionRecord>();

  @Backlink(to: 'profile')
  final categories = IsarLinks<Category>();

  @Backlink(to: 'profile')
  final tags = IsarLinks<Tag>();

  @Backlink(to: 'profile')
  final taskAssignments = IsarLinks<TaskAssignment>();

  @Backlink(to: 'profile')
  final schedules = IsarLinks<Schedule>();
}
