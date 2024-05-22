// ignore_for_file: non_constant_identifier_names
import 'dart:io';
import 'package:database_universe/database_universe.dart';

import 'package:general_lib/general_lib.dart';
import 'package:path/path.dart' as path;

EventEmitter eventEmitter = EventEmitter();
Directory directory_db = () {
  if (Dart.isWeb) {
    return Directory("");
  }
  return Directory(path.join(Directory.current.path, "db"));
}();

JsonScheme getDatabase({
  required DatabaseUniverse databaseUniverse,
}) {
  // open disk database
  DatabaseUniverseData<JsonScheme> databaseUniverseData = databaseUniverse.ram_open(file_name: "Slebew", directory: directory_db, valueData: JsonScheme({}));
  print(databaseUniverseData.state); 
  DateTime date_time_refresh = (databaseUniverseData.state["date_time_refresh"].toString()).general_lib_utils_toDatetime() ?? DateTime.now();
  if (date_time_refresh.isExpired()) {
    databaseUniverseData.state["date_time_refresh"] = DateTime.now().add(Duration(minutes: 1)).toString();

    print("update: ${databaseUniverseData.state}");
  }
  return databaseUniverseData.value;
  // change value
  // print("update");
  // databaseUniverseData.value["first_name"] = "change name";
  // // check if key count is not int set to int 0
  // if (databaseUniverseData.value["count"] is int == false) {
  //   databaseUniverseData.value["count"] = 0;
  // }
  // // increament
  // databaseUniverseData.value["count"] += 1;
}

void main(List<String> args) async {
  print("start");

  /// add database
  DatabaseUniverse databaseUniverse = DatabaseUniverse(
    // change extension with your own
    extension_name: "dbu",
    // if set true if open database password wrong force open but database will empty
    is_ignore_on_error: true,
  );
  // init database
  databaseUniverse.init(crypto: Crypto(key: "od8wkk8nYbgv2na8ApaL0NMGq3rcpnF5"));
  // set database directory
  //
  eventEmitter.on("update", null, (ev, context) {
    var value = getDatabase(databaseUniverse: databaseUniverse);
    value.rawData.printPretty();
    value["first_name"] = "change name";
    // check if key count is not int set to int 0
    if (value["count"] is int == false) {
      value["count"] = 0;
    }
    // increament
    value["count"] += 1;
    value.rawData.printPretty();
  });

  eventEmitter.emit("update", null, "slpalpsap");
  eventEmitter.emit("update", null, "slpalpsap");
  eventEmitter.emit("update", null, "slpalpsap");
  eventEmitter.emit("update", null, "slpalpsap");
  eventEmitter.emit("update", null, "slpalpsap");
  eventEmitter.emit("update", null, "slpalpsap");
  stdin.listen((event) {
    // eventEmitter.emit("update", null, "slpalpsap");
    eventEmitter.emit("update", null, "slpalpsap");
    databaseUniverse.disk_datas.length.printPretty();
  });
}
