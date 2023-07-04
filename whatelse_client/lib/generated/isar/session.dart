import 'package:isar/isar.dart';
import 'package:whatelse_client/generated/isar/schedule.dart';
import 'package:whatelse_client/generated/isar/session_record.dart';
import 'package:whatelse_client/generated/isar/task.dart';

part 'session.g.dart';

@collection
class Session {
  Id id = Isar.autoIncrement;

  @Index(unique: false)
  int? rId;

  late int start;

  late int end;

  late int cycle;

  late int dupCount;

  int updateAt = DateTime.now().millisecondsSinceEpoch;
  
  int? deleteAt;

  final task = IsarLink<Task>();

  final parent = IsarLink<Session>();

  @Backlink(to: 'parent')
  final children = IsarLinks<Session>();

  @Backlink(to: 'session')
  final records = IsarLinks<SessionRecord>();

  @Backlink(to: 'session')
  final schedules = IsarLinks<Schedule>();
}
