import 'dart:io';

import 'package:general_lib/general_lib.dart';
import 'package:system_info_fetch/system_info_fetch.dart';

enum DatabaseUniverseType { ram, disk, server }

class DatabaseUniverse {
  final DatabaseUniverseType databaseUniverseType;
  DatabaseUniverse({
    required this.databaseUniverseType,
  });
  static String getRam() {
    return FileSize.filesize(
      size: SystemInfoFetch.get_ram_usage_by_pid(
      pidProcces: pid,
    ),
    );
  }
}
