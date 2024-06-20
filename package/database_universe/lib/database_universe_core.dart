// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, empty_catches

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:database_universe/database_universe.dart';
import 'package:general_lib/general_lib.dart';
import 'package:http/http.dart';
import 'package:system_info_fetch/system_info_fetch.dart';
import "package:path/path.dart" as path;

/// open database
///
/// Example code
///
///
/// ```dart
/// DatabaseUniverseData<JsonScheme> data = await databaseUniverse.disk_open(
///   file_name: "config",
///   directory: Directory(join(Directory.current.path, "db")),
///   // change jsonSheme with your scheme
///   valueData: JsonScheme({}),
/// );
/// // change value
/// data.value["slebew"] = "slebew";
/// data.value["first_name"] = "Slebew";
/// // save data and close (decrease ram usage)
/// await databaseUniverse.disk_save(databaseUniverseData: data, isWithClose: true);
/// ```
class DatabaseUniverse {
  late final Crypto crypto_library;
  late final Client http_client;
  final String extension_name;
  bool is_ignore_on_error;
  List<DatabaseUniverseData> disk_datas = [];

  /// example
  ///
  ///
  /// ```dart
  /// DatabaseUniverse databaseUniverse = DatabaseUniverse(
  ///    database_universe_type: DatabaseUniverseType.disk,
  /// );
  /// // init crypto library
  /// databaseUniverse.init(crypto: Crypto(key: "od8wkk8nYbgv2na8ApaL0NMGq3rcpnF5"));
  /// ```
  DatabaseUniverse({
    this.extension_name = "dbu",
    this.is_ignore_on_error = true,
  });

  /// call this
  Future<void> initAsync({
    required Crypto crypto,
    Client? httpClient,
  }) async {
    crypto_library = crypto;
    httpClient ??= Client();
    http_client = httpClient;
  }

  /// call this
  void init({
    required Crypto crypto,
    Client? httpClient,
  }) {
    crypto_library = crypto;
    httpClient ??= Client();
    http_client = httpClient;
  }

  Crypto getCrypto({
    required Crypto? crypto,
  }) {
    return crypto ?? crypto_library;
  }

  /// get ram usage
  static String getRam() {
    return FileSize.filesize(
      size: SystemInfoFetch.get_ram_usage_by_pid(
        pidProcces: pid,
      ),
    );
  }

  /// example
  ///
  /// ```dart
  /// DatabaseUniverseData<AccountData> res = await databaseUniverse.ram_open(
  ///   file_name: "config",
  ///   directory: Directory(join(Directory.current.path, "db")),
  ///   valueData: AccountData({}),
  /// );
  /// ```
  DatabaseUniverseData<T> ram_open<T extends JsonScheme>({
    required String file_name,
    required Directory directory,
    required T valueData,
  }) {
    Uri uri = () {
      return Uri.parse("ram://${file_name}.${extension_name}");
    }();
    DatabaseUniverseData<JsonScheme>? databaseUniverseData = disk_datas.firstWhereOrNull((element) => element.uri == uri && element.databaseUniverseType == DatabaseUniverseType.ram);
    if (databaseUniverseData != null) {
      return databaseUniverseData as DatabaseUniverseData<T>;
      // valueData.rawData = databaseUniverseData.value.rawData;
      // DatabaseUniverseData<T> databaseUniverseDisk = DatabaseUniverseData(
      //   uri: uri,
      //   value: valueData,
      //   date_time_refresh: databaseUniverseData.date_time_refresh,
      //   databaseUniverseType: DatabaseUniverseType.ram,
      // );
      // return databaseUniverseDisk;
    }
    DatabaseUniverseData<T> databaseUniverseDisk = DatabaseUniverseData(
      uri: uri,
      value: valueData,
      state: {},
      databaseUniverseType: DatabaseUniverseType.ram,
    );
    disk_datas.add(databaseUniverseDisk);
    return databaseUniverseDisk;
  }

  /// example
  ///
  ///
  /// ```dart
  /// DatabaseUniverseData<AccountData> res = await databaseUniverse.disk_open(
  ///   file_name: "config",
  ///   directory: Directory(join(Directory.current.path, "db")),
  ///   valueData: AccountData({}),
  /// );
  /// ```
  DatabaseUniverseData<T> disk_open<T extends JsonScheme>({
    required String file_name,
    required Directory directory,
    required T valueData,
    Crypto? cryptoLibrary,
  }) {
    if (Dart.isWeb) {
      return ram_open(file_name: file_name, directory: directory, valueData: valueData);
    }

    Crypto crypto = getCrypto(crypto: cryptoLibrary);

    File file = File(path.join(directory.uri.toFilePath(), "${file_name}.${extension_name}"));
    File file_lock = File(path.join(directory.uri.toFilePath(), "${file_name}.${extension_name}.lock"));

    DatabaseUniverseData<JsonScheme>? data = disk_datas.firstWhereOrNull((element) => element.uri == file.uri && element.databaseUniverseType == DatabaseUniverseType.disk);
    if (data != null) {
      return data as DatabaseUniverseData<T>;
      // valueData.rawData = data.value.rawData;
      // DatabaseUniverseData<T> databaseUniverseDisk = DatabaseUniverseData(
      //   uri: file.uri,
      //   value: valueData,
      //   date_time_refresh: data.date_time_refresh,
      //   databaseUniverseType: DatabaseUniverseType.disk,
      // );
      // return databaseUniverseDisk;
    }
    if (file.parent.existsSync() == false) {
      file.parent.createSync(recursive: true);
    }
    if (file.existsSync() == false) {
      file.createSync(recursive: true);
    }
    file_lock.writeAsStringSync("${pid}");
    String read_data = "";
    try {
      read_data = file.readAsStringSync();
    } catch (e) {}
    String result = "";

    try {
      result = () {
        if (read_data.isEmpty) {
          return read_data;
        }
        return crypto.decrypt(data_base64: (read_data));
      }();
    } catch (e) {}
    try {
      valueData.rawData = json.decode(result);
    } catch (e) {}
    DatabaseUniverseData<T> databaseUniverseDisk = DatabaseUniverseData(
      uri: file.uri,
      value: valueData,
      state: {},
      // date_time_refresh: DateTime.now(),
      databaseUniverseType: DatabaseUniverseType.disk,
    );
    disk_datas.add(databaseUniverseDisk);
    return databaseUniverseDisk;
  }

  void disk_save<T extends JsonScheme>({
    required DatabaseUniverseData<T> databaseUniverseData,
    bool isWithClose = false,
    Crypto? cryptoLibrary,
  }) {
    if (Dart.isWeb) {
    } else {
      Crypto crypto = getCrypto(crypto: cryptoLibrary);
      File file = File.fromUri(databaseUniverseData.uri);
      if (file.parent.existsSync() == false) {
        file.parent.createSync(recursive: true);
      }
      if (file.existsSync() == false) {
        file.createSync(recursive: true);
      }
      file.writeAsStringSync(crypto.encrypt(data: json.encode(databaseUniverseData.value.rawData)));
    }
    if (isWithClose) {
      close(databaseUniverseDisk: databaseUniverseData);
    }
  }

  Future<void> disk_saveAsync<T extends JsonScheme>({
    required DatabaseUniverseData<T> databaseUniverseData,
    bool isWithClose = false,
    Crypto? cryptoLibrary,
  }) async {
    if (Dart.isWeb) {
    } else {
      Crypto crypto = getCrypto(crypto: cryptoLibrary);
      File file = File.fromUri(databaseUniverseData.uri);
      if (file.parent.existsSync() == false) {
        file.parent.createSync(recursive: true);
      }
      if (file.existsSync() == false) {
        file.createSync(recursive: true);
      }
      await file.writeAsString(crypto.encrypt(data: json.encode(databaseUniverseData.value.rawData)));
    }
    if (isWithClose) {
      close(databaseUniverseDisk: databaseUniverseData);
    }
  }

  void close<T extends JsonScheme>({
    required DatabaseUniverseData<T> databaseUniverseDisk,
  }) async {
    disk_datas.removeWhere((element) => element.isSame(databaseUniverseData: databaseUniverseDisk));
    // disk_datas.removeWhere((element) => element.uri == databaseUniverseDisk.uri);
  }

  void closeAllByType({required DatabaseUniverseType databaseUniverseType}) async {
    disk_datas.removeWhere((element) => element.databaseUniverseType == databaseUniverseType);
  }
}
