import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart%20';

int _count = 0;

Future<File> saveImageToTempFile(Uint8List bytes) async {
  _count++;
  Directory tempDir = await getTemporaryDirectory();
  String tempPath = tempDir.path;
  print(
      "ttttttthhhhhheee path of cached directory issssssssssssssssssssssssssssssss $tempPath and count is $_count");
  File tempFile = File('$tempPath/temp_image$_count.jpg');
  await tempFile.writeAsBytes(bytes);
  return tempFile;
}
