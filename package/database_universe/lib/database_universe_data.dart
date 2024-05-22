// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

import 'package:database_universe/database_universe_type.dart';
import 'package:general_lib/general_lib.dart';

/// Database Universe Data
class DatabaseUniverseData<T extends JsonScheme> {
  Uri uri;
  DatabaseUniverseType databaseUniverseType;
  Map state;
  T value;
  DatabaseUniverseData({
    required this.uri,
    required this.value,
    required this.state,
    required this.databaseUniverseType,
  });
  int size() {
    return utf8.encode(json.encode(value.rawData)).length;
  }

  /// check data is same or not
  bool isSame({required DatabaseUniverseData databaseUniverseData}) {
    if (databaseUniverseType == databaseUniverseData.databaseUniverseType) {
      if (uri == databaseUniverseData.uri) {
        return true;
      }
    }
    return false;
  }

  @override
  String toString() {
    return "${uri.toString()}: ${databaseUniverseType.name}";
  }
}
