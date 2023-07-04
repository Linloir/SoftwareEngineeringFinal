import 'package:isar/isar.dart';
import 'package:whatelse_client/generated/isar/profile.dart';
import 'package:whatelse_client/generated/isar/task_assignment.dart';

part 'tag.g.dart';

@collection
class Tag {
  Id id = Isar.autoIncrement;

  @Index(unique: false)
  int? rId;

  late String name;

  late int color;

  late String icon;

  int updateAt = DateTime.now().millisecondsSinceEpoch;
  
  int? deleteAt;

  final profile = IsarLink<Profile>();

  @Backlink(to: 'tags')
  final taskAssignments = IsarLinks<TaskAssignment>();
}
