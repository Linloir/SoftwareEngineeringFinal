import 'package:isar/isar.dart';
import 'package:whatelse_client/generated/isar/channel_subscription.dart';
import 'package:whatelse_client/generated/isar/profile.dart';
import 'package:whatelse_client/generated/isar/task.dart';
import 'package:whatelse_client/generated/isar/task_assignment.dart';
import 'package:whatelse_client/generated/isar/user.dart';

part 'channel.g.dart';

enum ChannelType {
  public,
  invited,
  private,
}

@collection
class Channel {
  Id id = Isar.autoIncrement;

  final owner = IsarLink<Profile>();

  @Index(unique: false)
  int? rId;

  late String name;
  
  late String desc;

  late String icon;

  late String? imgRef;

  late String? avatarRef;

  @enumerated
  late ChannelType type;

  late bool requestData;

  int updateAt = DateTime.now().millisecondsSinceEpoch;
  
  int? deleteAt;

  @Backlink(to: 'channels')
  final tasks = IsarLinks<Task>();

  @Backlink(to: 'channel')
  final subscriptions = IsarLinks<ChannelSubscription>();

  @Backlink(to: 'upstreamChannels')
  final taskAssignments = IsarLinks<TaskAssignment>();
}
