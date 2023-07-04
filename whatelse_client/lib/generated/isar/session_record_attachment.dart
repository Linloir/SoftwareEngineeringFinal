import 'package:isar/isar.dart';
import 'package:whatelse_client/generated/isar/session_record.dart';

part 'session_record_attachment.g.dart';

@collection
class SessionRecordAttachment {
  Id id = Isar.autoIncrement;

  @Index(unique: false)
  int? rId;

  late String fileId;

  late String fileName;

  late String assetRef;

  int updateAt = DateTime.now().millisecondsSinceEpoch;
  
  int? deleteAt;

  final sessionRecord = IsarLink<SessionRecord>();
}
