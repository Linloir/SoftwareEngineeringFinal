import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:synchronized/synchronized.dart';
import 'package:whatelse_server/src/generated/prisma/prisma_client.dart';
import 'package:whatelse_server/src/utils/storage/config_provider.dart';
import 'package:whatelse_server/src/utils/storage/prisma_provider.dart';

class FileRecord {
  final String path;
  final String hash;

  FileRecord(this.path, this.hash);
}

class FileProvider {
  static final FileProvider _singleton = FileProvider._init();
  static Lock get tmpFileLock => _singleton._tmpFileLock;

  final Lock _tmpFileLock;

  FileProvider._internal(
    this._tmpFileLock,
  );

  factory FileProvider._init() {
    return FileProvider._internal(Lock());
  }

  static Future<FileRecord> saveFile(Stream<List<int>> fileStream) async {
    // Convert stream to broadcast stream
    fileStream = fileStream.asBroadcastStream();
    // Check for data folder existence
    if (!(await Directory(ConfigProvider.data.root).exists())) {
      await Directory(ConfigProvider.data.root).create();
    }
    // Check for data folder existence
    final rootPath = ConfigProvider.data.root;
    if (!(await Directory(rootPath).exists())) {
      await Directory(rootPath).create();
    }
    // Save file to tmp folder while calculate md5 hash
    final tmpPath = '$rootPath/tmp';
    if (!(await Directory(tmpPath).exists())) {
      await Directory(tmpPath).create();
    }
    late final File tmpFile;
    tmpFileLock.synchronized(() async {
      var tmpName = '${DateTime.now().millisecondsSinceEpoch}';
      while (await File('$tmpPath/$tmpName').exists()) {
        tmpName = '${tmpName}1';
      }
      tmpFile = await File('$tmpPath/$tmpName').create();
    });
    late final String fileMd5;
    final tmpSink = tmpFile.openWrite();
    final piping = fileStream.pipe(tmpSink)
      .then((_) => tmpSink.flush())
      .then((_) => tmpSink.close());
    final hashing = md5.bind(fileStream)
      .first
      .then((digest) => fileMd5 = digest.toString());
    await Future.wait([piping, hashing]);
    // Check for file existence
    final filePath = '$rootPath/$fileMd5';
    if (!(await File(filePath).exists())) {
      // Move file from tmp folder to category folder
      await tmpFile.copy(filePath);
      tmpFile.delete();
      // Create file reference
      await PrismaProvider.client.fileRef.create(
        data: FileRefCreateInput(
          hash: fileMd5,
          count: 1,
        ),
      );
      return FileRecord(filePath, fileMd5);
    } else {
      tmpFile.delete();
      await PrismaProvider.client.fileRef.update(
        data: FileRefUpdateInput(
          count: NullableIntFieldUpdateOperationsInput(
            increment: 1,
          ),
        ),
        where: FileRefWhereUniqueInput(
          hash: fileMd5,
        ),
      );
      return FileRecord(filePath, fileMd5);
    }
  }

  static Future<Stream<List<int>>?> getFile(String? filePath) async {
    if (filePath == null || !(await File(filePath).exists())) {
      return null;
    }
    return File(filePath).openRead();
  }

  static Future<void> removeFile(String? filePath) async {
    if (filePath == null) {
      return;
    }
    final file = File(filePath);
    if (!(await file.exists())) {
      return;
    }
    final hash = file.path.split('/').last;
    final ref = await PrismaProvider.client.fileRef.update(
      data: FileRefUpdateInput(
        count: NullableIntFieldUpdateOperationsInput(
          decrement: 1,
        ),
      ),
      where: FileRefWhereUniqueInput(
        hash: hash,
      ),
    );
    if (ref == null || ref.count == 0) {
      file.delete();
    }
  }
}