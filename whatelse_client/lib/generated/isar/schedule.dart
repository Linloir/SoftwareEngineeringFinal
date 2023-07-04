import 'package:isar/isar.dart';
import 'package:whatelse_client/generated/isar/profile.dart';
import 'package:whatelse_client/generated/isar/session.dart';

part 'schedule.g.dart';

@collection
class Schedule {
  Id id = Isar.autoIncrement;

  @Index(unique: false)
  int? rId;

  late int relStart;

  late int relEnd;

  int updateAt = DateTime.now().millisecondsSinceEpoch;
  
  int? deleteAt;

  final session = IsarLink<Session>();

  final profile = IsarLink<Profile>();
}
