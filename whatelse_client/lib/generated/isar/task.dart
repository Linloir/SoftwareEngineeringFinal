import 'package:isar/isar.dart';
import 'package:whatelse_client/generated/isar/channel.dart';
import 'package:whatelse_client/generated/isar/profile.dart';
import 'package:whatelse_client/generated/isar/session.dart';
import 'package:whatelse_client/generated/isar/task_asset.dart';
import 'package:whatelse_client/generated/isar/task_assignment.dart';

part 'task.g.dart';

@collection
class Task {
  Id id = Isar.autoIncrement;

  final profile = IsarLink<Profile>();

  @Index(unique: false)
  int? rId;

  final parent = IsarLink<Task>();
  
  @Backlink(to: 'parent')
  final children = IsarLinks<Task>();

  late bool inherited;

  late bool periodic;

  late String title;

  late String desc;

  String? location;

  late String content;

  late bool specLoc;

  late bool specTime;

  late bool specAtt;

  int updateAt = DateTime.now().millisecondsSinceEpoch;
  
  int? deleteAt;

  @Backlink(to: 'task')
  final assets = IsarLinks<TaskAsset>();

  final channels = IsarLinks<Channel>();

  @Backlink(to: 'task')
  final sessions = IsarLinks<Session>();

  @Backlink(to: 'task')
  final assignments = IsarLinks<TaskAssignment>();
}
