import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:path_provider/path_provider.dart';

abstract class FileProvider {
  static Future<String> saveFile({
    String? name,
    required List<int> bytes,
  }) async {
    final hash = md5.convert(bytes).toString();
    final dir = (await getApplicationDocumentsDirectory()).path;
    name ??= hash;
    var path = '$dir/$name';
    var file = File(path);
    while (await file.exists()) {
      name = '$name(1)';
      path = '$dir/$name';
      file = File(path);
    }
    await file.create();
    await file.writeAsBytes(bytes);
    return path;
  }

  static Future<String> saveCache({
    required List<int> bytes,
  }) async {
    final hash = md5.convert(bytes).toString();
    final dir = (await getTemporaryDirectory()).path;
    var path = '$dir/$hash';
    var file = File(path);
    if (await file.exists()) {
      return path;
    }
    await file.create();
    await file.writeAsBytes(bytes);
    return path;
  }
}