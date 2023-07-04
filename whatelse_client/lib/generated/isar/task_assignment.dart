import 'package:isar/isar.dart';
import 'package:whatelse_client/generated/isar/category.dart';
import 'package:whatelse_client/generated/isar/channel.dart';
import 'package:whatelse_client/generated/isar/profile.dart';
import 'package:whatelse_client/generated/isar/tag.dart';
import 'package:whatelse_client/generated/isar/task.dart';

part 'task_assignment.g.dart';

enum TaskAssignmentStatus {
  accepted,
  rejected,
}

enum TaskPriority {
  none,
  low,
  medium,
  high,
  urgent,
}

@collection
class TaskAssignment {
  Id id = Isar.autoIncrement;

  @Index(unique: false)
  int? rId;

  @enumerated
  late TaskAssignmentStatus status;

  @enumerated
  late TaskPriority priority;

  late bool starred;

  late bool archived;

  late bool shareRecord;

  String? postAction;

  int updateAt = DateTime.now().millisecondsSinceEpoch;
  
  int? deleteAt;

  final task = IsarLink<Task>();

  final profile = IsarLink<Profile>();

  final upstreamChannels = IsarLinks<Channel>();

  final category = IsarLink<Category>();

  final tags = IsarLinks<Tag>();
}
