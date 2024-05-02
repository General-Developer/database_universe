import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'dart:io' as lpsa;
import 'package:database_universe/database_universe_core.dart';
import 'package:general_lib/general_lib.dart';

void main(List<String> args) async {
  print(DatabaseUniverse.getRam());
  DatabaseUniverse databaseUniverse = DatabaseUniverse(
    databaseUniverseType: DatabaseUniverseType.ram,
  );
  print(DatabaseUniverse.getRam());

  stdin.listen((event) {
    stream(utf8.decode(event, allowMalformed: true).trim());
  });

  while (true) {
    await Future.delayed(Duration(microseconds: 1));
    if (is_break) {
      break;
    }
    (generateUuid(Random().nextInt(500000) + 50000));
  }
  
}

bool is_break = false;
void stream(String text) async {
  is_break = true;
  if (text == "flush") {
    await stdout.flush();
  }
  if (text == "ram") {
    print(DatabaseUniverse.getRam());
  }
  if (text == "while") {}
  if (text == "sleep") {
    print("sleep");
    sleep(Duration(seconds: 10));
    print("done");
  }
}
