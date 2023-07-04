import 'package:isar/isar.dart';
import 'package:whatelse_client/generated/isar/profile.dart';
import 'package:whatelse_client/generated/isar/session.dart';
import 'package:whatelse_client/generated/isar/session_record_attachment.dart';

part 'session_record.g.dart';

@collection
class SessionRecord {
  Id id = Isar.autoIncrement;

  @Index(unique: false)
  int? rId;

  late int time;

  late int dupIndex;

  late int taskDue;

  int updateAt = DateTime.now().millisecondsSinceEpoch;
  
  int? deleteAt;

  final session = IsarLink<Session>();

  final profile = IsarLink<Profile>();

  @Backlink(to: 'sessionRecord')
  final attachment = IsarLink<SessionRecordAttachment>();
}
