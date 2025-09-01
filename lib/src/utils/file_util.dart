import 'dart:io';
import 'package:path/path.dart' as p;

abstract class FileUtil {
  static Future<(File file, String data)> readAsString(String path) async {
    final file = File(p.normalize(path));
    final data = await file.readAsString();
    return (file, data);
  }
}
