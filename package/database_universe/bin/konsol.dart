import 'dart:io';

import 'package:path/path.dart';

void main(List<String> args) {
  File file = File(join(Directory.current.uri.toFilePath(), "README.md"));
  
  
  print("locked");
  stdin.listen((event) {});

  // File file_two = File(join(Directory.current.uri.toFilePath(), "README.md"));
  // file_two.openSync();
}
