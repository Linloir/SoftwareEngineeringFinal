import 'package:isar/isar.dart';
import 'package:whatelse_client/generated/isar/task.dart';

part 'task_asset.g.dart';

enum FileCat {
  avatar,
  image,
  document,
  recording;

  factory FileCat.fromValue(String value) {
    switch (value) {
      case 'avatar':
        return FileCat.avatar;
      case 'image':
        return FileCat.image;
      case 'document':
        return FileCat.document;
      case 'recording':
        return FileCat.recording;
      default:
        return FileCat.document;
    }
  }
}

@collection
class TaskAsset {
  Id id = Isar.autoIncrement;

  @Index(unique: false)
  int? rId;

  final task = IsarLink<Task>();

  /// The hash value of the file.
  late String fileId;

  /// The file reference in local storage.
  late String ref;

  /// The file cat.
  @enumerated
  late FileCat cat;

  int updateAt = DateTime.now().millisecondsSinceEpoch;
  
  int? deleteAt;
}
