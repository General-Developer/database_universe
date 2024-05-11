/// ```dart
/// // ignore_for_file: non_constant_identifier_names
/// import 'dart:io';
/// import 'package:database_universe/database_universe.dart';
/// import 'package:general_lib/general_lib.dart';
/// import 'package:path/path.dart' as path;
/// void main(List<String> args) async {
///   print("start");
///   /// add database
///   DatabaseUniverse databaseUniverse = DatabaseUniverse(
///     // change extension with your own
///     extension_name: "dbu",
///     // if set true if open database password wrong force open but database will empty
///     is_ignore_on_error: true,
///   );
///   // init database
///   databaseUniverse.init(crypto: Crypto(key: "od8wkk8nYbgv2na8ApaL0NMGq3rcpnF5"));
///   // set database directory
///   Directory directory_db = () {
///     if (Dart.isWeb) {
///       return Directory("");
///     }
///     return Directory(path.join(Directory.current.path, "db"));
///   }();
///   print("open");
///   // open disk database
///   DatabaseUniverseData<JsonScheme> databaseUniverseData = databaseUniverse.disk_open(
///     file_name: "Slebew",
///     directory: directory_db,
///     valueData: JsonScheme({}),
///   );
///   // change value
///   print("update");
///   databaseUniverseData.value["first_name"] = "change name";
///   // check if key count is not int set to int 0
///   if (databaseUniverseData.value["count"] is int == false) {
///     databaseUniverseData.value["count"] = 0;
///   }
///   // increament
///   databaseUniverseData.value["count"] += 1;
///   // save to disk
///   databaseUniverse.disk_save(databaseUniverseData: databaseUniverseData, isWithClose: true);
///   print("saved");
/// }
/// ```
library database_universe;

export "package:database_universe/database_universe_core.dart";
export "package:database_universe/database_universe_data.dart";
export "package:database_universe/database_universe_type.dart";
