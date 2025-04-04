// ignore_for_file: constant_identifier_names

/* <!-- START LICENSE -->


This Software / Program / Source Code Created By Developer From Company GLOBAL CORPORATION
Social Media:

   - Youtube: https://youtube.com/@Global_Corporation 
   - Github: https://github.com/globalcorporation
   - TELEGRAM: https://t.me/GLOBAL_CORP_ORG_BOT

All code script in here created 100% original without copy / steal from other code if we copy we add description source at from top code

If you wan't edit you must add credit me (don't change)

If this Software / Program / Source Code has you

Jika Program ini milik anda dari hasil beli jasa developer di (Global Corporation / apapun itu dari turunan itu jika ada kesalahan / bug / ingin update segera lapor ke sub)

Misal anda beli Beli source code di Slebew CORPORATION anda lapor dahulu di slebew jangan lapor di GLOBAL CORPORATION!

Jika ada kendala program ini (Pastikan sebelum deal project tidak ada negosiasi harga)
Karena jika ada negosiasi harga kemungkinan

1. Software Ada yang di kurangin
2. Informasi tidak lengkap
3. Bantuan Tidak Bisa remote / full time (Ada jeda)

Sebelum program ini sampai ke pembeli developer kami sudah melakukan testing

jadi sebelum nego kami sudah melakukan berbagai konsekuensi jika nego tidak sesuai ? 
Bukan maksud kami menipu itu karena harga yang sudah di kalkulasi + bantuan tiba tiba di potong akhirnya bantuan / software kadang tidak lengkap


<!-- END LICENSE --> */
// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:ffi' as ffi;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
class DatabaseUniverseCoreBindings {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  DatabaseUniverseCoreBindings(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  DatabaseUniverseCoreBindings.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CString> database_universe_string(
    ffi.Pointer<ffi.Uint16> chars,
    int length,
  ) {
    return _database_universe_string(
      chars,
      length,
    );
  }

  late final _database_universe_stringPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CString> Function(ffi.Pointer<ffi.Uint16>,
              ffi.Uint32)>>('database_universe_string');
  late final _database_universe_string =
      _database_universe_stringPtr.asFunction<
          ffi.Pointer<CString> Function(ffi.Pointer<ffi.Uint16>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_buffer_free(
    ffi.Pointer<ffi.Uint8> value,
    int capacity,
  ) {
    return _database_universe_buffer_free(
      value,
      capacity,
    );
  }

  late final _database_universe_buffer_freePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<ffi.Uint8>,
              ffi.Uint32)>>('database_universe_buffer_free');
  late final _database_universe_buffer_free = _database_universe_buffer_freePtr
      .asFunction<void Function(ffi.Pointer<ffi.Uint8>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_get_error(
    ffi.Pointer<ffi.Pointer<ffi.Uint8>> value,
  ) {
    return _database_universe_get_error(
      value,
    );
  }

  late final _database_universe_get_errorPtr = _lookup<
          ffi.NativeFunction<
              ffi.Uint32 Function(ffi.Pointer<ffi.Pointer<ffi.Uint8>>)>>(
      'database_universe_get_error');
  late final _database_universe_get_error = _database_universe_get_errorPtr
      .asFunction<int Function(ffi.Pointer<ffi.Pointer<ffi.Uint8>>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CDatabaseUniverseReader> database_universe_cursor_next(
    ffi.Pointer<CDatabaseUniverseCursor> cursor,
    int id,
    ffi.Pointer<CDatabaseUniverseReader> old_reader,
  ) {
    return _database_universe_cursor_next(
      cursor,
      id,
      old_reader,
    );
  }

  late final _database_universe_cursor_nextPtr = _lookup<
          ffi.NativeFunction<
              ffi.Pointer<CDatabaseUniverseReader> Function(
                  ffi.Pointer<CDatabaseUniverseCursor>,
                  DatabaseUniverseI64,
                  ffi.Pointer<CDatabaseUniverseReader>)>>(
      'database_universe_cursor_next');
  late final _database_universe_cursor_next =
      _database_universe_cursor_nextPtr.asFunction<
          ffi.Pointer<CDatabaseUniverseReader> Function(
              ffi.Pointer<CDatabaseUniverseCursor>,
              int,
              ffi.Pointer<CDatabaseUniverseReader>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_cursor_free(
    ffi.Pointer<CDatabaseUniverseCursor> cursor,
    ffi.Pointer<CDatabaseUniverseReader> reader,
  ) {
    return _database_universe_cursor_free(
      cursor,
      reader,
    );
  }

  late final _database_universe_cursor_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<CDatabaseUniverseCursor>,
                  ffi.Pointer<CDatabaseUniverseReader>)>>(
      'database_universe_cursor_free');
  late final _database_universe_cursor_free =
      _database_universe_cursor_freePtr.asFunction<
          void Function(ffi.Pointer<CDatabaseUniverseCursor>,
              ffi.Pointer<CDatabaseUniverseReader>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CDatabaseUniverseReader> database_universe_query_cursor_next(
    ffi.Pointer<CDatabaseUniverseQueryCursor> cursor,
    ffi.Pointer<CDatabaseUniverseReader> old_reader,
  ) {
    return _database_universe_query_cursor_next(
      cursor,
      old_reader,
    );
  }

  late final _database_universe_query_cursor_nextPtr = _lookup<
          ffi.NativeFunction<
              ffi.Pointer<CDatabaseUniverseReader> Function(
                  ffi.Pointer<CDatabaseUniverseQueryCursor>,
                  ffi.Pointer<CDatabaseUniverseReader>)>>(
      'database_universe_query_cursor_next');
  late final _database_universe_query_cursor_next =
      _database_universe_query_cursor_nextPtr.asFunction<
          ffi.Pointer<CDatabaseUniverseReader> Function(
              ffi.Pointer<CDatabaseUniverseQueryCursor>,
              ffi.Pointer<CDatabaseUniverseReader>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_query_cursor_free(
    ffi.Pointer<CDatabaseUniverseQueryCursor> cursor,
    ffi.Pointer<CDatabaseUniverseReader> reader,
  ) {
    return _database_universe_query_cursor_free(
      cursor,
      reader,
    );
  }

  late final _database_universe_query_cursor_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<CDatabaseUniverseQueryCursor>,
                  ffi.Pointer<CDatabaseUniverseReader>)>>(
      'database_universe_query_cursor_free');
  late final _database_universe_query_cursor_free =
      _database_universe_query_cursor_freePtr.asFunction<
          void Function(ffi.Pointer<CDatabaseUniverseQueryCursor>,
              ffi.Pointer<CDatabaseUniverseReader>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_connect_dart_api(
    ffi.Pointer<ffi.Void> ptr,
  ) {
    return _database_universe_connect_dart_api(
      ptr,
    );
  }

  late final _database_universe_connect_dart_apiPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
          'database_universe_connect_dart_api');
  late final _database_universe_connect_dart_api =
      _database_universe_connect_dart_apiPtr
          .asFunction<void Function(ffi.Pointer<ffi.Void>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CFilter> database_universe_filter_is_null(
    int property_index,
  ) {
    return _database_universe_filter_is_null(
      property_index,
    );
  }

  late final _database_universe_filter_is_nullPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<CFilter> Function(ffi.Uint16)>>(
          'database_universe_filter_is_null');
  late final _database_universe_filter_is_null =
      _database_universe_filter_is_nullPtr
          .asFunction<ffi.Pointer<CFilter> Function(int)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CFilter> database_universe_filter_equal(
    int property_index,
    ffi.Pointer<CDatabaseUniverseValue> value,
    bool case_sensitive,
  ) {
    return _database_universe_filter_equal(
      property_index,
      value,
      case_sensitive,
    );
  }

  late final _database_universe_filter_equalPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CFilter> Function(
              ffi.Uint16,
              ffi.Pointer<CDatabaseUniverseValue>,
              ffi.Bool)>>('database_universe_filter_equal');
  late final _database_universe_filter_equal =
      _database_universe_filter_equalPtr.asFunction<
          ffi.Pointer<CFilter> Function(
              int, ffi.Pointer<CDatabaseUniverseValue>, bool)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CFilter> database_universe_filter_greater(
    int property_index,
    ffi.Pointer<CDatabaseUniverseValue> value,
    bool case_sensitive,
  ) {
    return _database_universe_filter_greater(
      property_index,
      value,
      case_sensitive,
    );
  }

  late final _database_universe_filter_greaterPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CFilter> Function(
              ffi.Uint16,
              ffi.Pointer<CDatabaseUniverseValue>,
              ffi.Bool)>>('database_universe_filter_greater');
  late final _database_universe_filter_greater =
      _database_universe_filter_greaterPtr.asFunction<
          ffi.Pointer<CFilter> Function(
              int, ffi.Pointer<CDatabaseUniverseValue>, bool)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CFilter> database_universe_filter_greater_or_equal(
    int property_index,
    ffi.Pointer<CDatabaseUniverseValue> value,
    bool case_sensitive,
  ) {
    return _database_universe_filter_greater_or_equal(
      property_index,
      value,
      case_sensitive,
    );
  }

  late final _database_universe_filter_greater_or_equalPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CFilter> Function(
              ffi.Uint16,
              ffi.Pointer<CDatabaseUniverseValue>,
              ffi.Bool)>>('database_universe_filter_greater_or_equal');
  late final _database_universe_filter_greater_or_equal =
      _database_universe_filter_greater_or_equalPtr.asFunction<
          ffi.Pointer<CFilter> Function(
              int, ffi.Pointer<CDatabaseUniverseValue>, bool)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CFilter> database_universe_filter_less(
    int property_index,
    ffi.Pointer<CDatabaseUniverseValue> value,
    bool case_sensitive,
  ) {
    return _database_universe_filter_less(
      property_index,
      value,
      case_sensitive,
    );
  }

  late final _database_universe_filter_lessPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CFilter> Function(
              ffi.Uint16,
              ffi.Pointer<CDatabaseUniverseValue>,
              ffi.Bool)>>('database_universe_filter_less');
  late final _database_universe_filter_less =
      _database_universe_filter_lessPtr.asFunction<
          ffi.Pointer<CFilter> Function(
              int, ffi.Pointer<CDatabaseUniverseValue>, bool)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CFilter> database_universe_filter_less_or_equal(
    int property_index,
    ffi.Pointer<CDatabaseUniverseValue> value,
    bool case_sensitive,
  ) {
    return _database_universe_filter_less_or_equal(
      property_index,
      value,
      case_sensitive,
    );
  }

  late final _database_universe_filter_less_or_equalPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CFilter> Function(
              ffi.Uint16,
              ffi.Pointer<CDatabaseUniverseValue>,
              ffi.Bool)>>('database_universe_filter_less_or_equal');
  late final _database_universe_filter_less_or_equal =
      _database_universe_filter_less_or_equalPtr.asFunction<
          ffi.Pointer<CFilter> Function(
              int, ffi.Pointer<CDatabaseUniverseValue>, bool)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CFilter> database_universe_filter_between(
    int property_index,
    ffi.Pointer<CDatabaseUniverseValue> lower,
    ffi.Pointer<CDatabaseUniverseValue> upper,
    bool case_sensitive,
  ) {
    return _database_universe_filter_between(
      property_index,
      lower,
      upper,
      case_sensitive,
    );
  }

  late final _database_universe_filter_betweenPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CFilter> Function(
              ffi.Uint16,
              ffi.Pointer<CDatabaseUniverseValue>,
              ffi.Pointer<CDatabaseUniverseValue>,
              ffi.Bool)>>('database_universe_filter_between');
  late final _database_universe_filter_between =
      _database_universe_filter_betweenPtr.asFunction<
          ffi.Pointer<CFilter> Function(
              int,
              ffi.Pointer<CDatabaseUniverseValue>,
              ffi.Pointer<CDatabaseUniverseValue>,
              bool)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CFilter> database_universe_filter_string_starts_with(
    int property_index,
    ffi.Pointer<CDatabaseUniverseValue> value,
    bool case_sensitive,
  ) {
    return _database_universe_filter_string_starts_with(
      property_index,
      value,
      case_sensitive,
    );
  }

  late final _database_universe_filter_string_starts_withPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CFilter> Function(
              ffi.Uint16,
              ffi.Pointer<CDatabaseUniverseValue>,
              ffi.Bool)>>('database_universe_filter_string_starts_with');
  late final _database_universe_filter_string_starts_with =
      _database_universe_filter_string_starts_withPtr.asFunction<
          ffi.Pointer<CFilter> Function(
              int, ffi.Pointer<CDatabaseUniverseValue>, bool)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CFilter> database_universe_filter_string_ends_with(
    int property_index,
    ffi.Pointer<CDatabaseUniverseValue> value,
    bool case_sensitive,
  ) {
    return _database_universe_filter_string_ends_with(
      property_index,
      value,
      case_sensitive,
    );
  }

  late final _database_universe_filter_string_ends_withPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CFilter> Function(
              ffi.Uint16,
              ffi.Pointer<CDatabaseUniverseValue>,
              ffi.Bool)>>('database_universe_filter_string_ends_with');
  late final _database_universe_filter_string_ends_with =
      _database_universe_filter_string_ends_withPtr.asFunction<
          ffi.Pointer<CFilter> Function(
              int, ffi.Pointer<CDatabaseUniverseValue>, bool)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CFilter> database_universe_filter_string_contains(
    int property_index,
    ffi.Pointer<CDatabaseUniverseValue> value,
    bool case_sensitive,
  ) {
    return _database_universe_filter_string_contains(
      property_index,
      value,
      case_sensitive,
    );
  }

  late final _database_universe_filter_string_containsPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CFilter> Function(
              ffi.Uint16,
              ffi.Pointer<CDatabaseUniverseValue>,
              ffi.Bool)>>('database_universe_filter_string_contains');
  late final _database_universe_filter_string_contains =
      _database_universe_filter_string_containsPtr.asFunction<
          ffi.Pointer<CFilter> Function(
              int, ffi.Pointer<CDatabaseUniverseValue>, bool)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CFilter> database_universe_filter_string_matches(
    int property_index,
    ffi.Pointer<CDatabaseUniverseValue> value,
    bool case_sensitive,
  ) {
    return _database_universe_filter_string_matches(
      property_index,
      value,
      case_sensitive,
    );
  }

  late final _database_universe_filter_string_matchesPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CFilter> Function(
              ffi.Uint16,
              ffi.Pointer<CDatabaseUniverseValue>,
              ffi.Bool)>>('database_universe_filter_string_matches');
  late final _database_universe_filter_string_matches =
      _database_universe_filter_string_matchesPtr.asFunction<
          ffi.Pointer<CFilter> Function(
              int, ffi.Pointer<CDatabaseUniverseValue>, bool)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CFilter> database_universe_filter_nested(
    int property_index,
    ffi.Pointer<CFilter> filter,
  ) {
    return _database_universe_filter_nested(
      property_index,
      filter,
    );
  }

  late final _database_universe_filter_nestedPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CFilter> Function(ffi.Uint16,
              ffi.Pointer<CFilter>)>>('database_universe_filter_nested');
  late final _database_universe_filter_nested =
      _database_universe_filter_nestedPtr
          .asFunction<ffi.Pointer<CFilter> Function(int, ffi.Pointer<CFilter>)>(
              isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CFilter> database_universe_filter_and(
    ffi.Pointer<ffi.Pointer<CFilter>> filters,
    int lenght,
  ) {
    return _database_universe_filter_and(
      filters,
      lenght,
    );
  }

  late final _database_universe_filter_andPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CFilter> Function(ffi.Pointer<ffi.Pointer<CFilter>>,
              ffi.Uint32)>>('database_universe_filter_and');
  late final _database_universe_filter_and =
      _database_universe_filter_andPtr.asFunction<
          ffi.Pointer<CFilter> Function(
              ffi.Pointer<ffi.Pointer<CFilter>>, int)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CFilter> database_universe_filter_or(
    ffi.Pointer<ffi.Pointer<CFilter>> filters,
    int lenght,
  ) {
    return _database_universe_filter_or(
      filters,
      lenght,
    );
  }

  late final _database_universe_filter_orPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CFilter> Function(ffi.Pointer<ffi.Pointer<CFilter>>,
              ffi.Uint32)>>('database_universe_filter_or');
  late final _database_universe_filter_or =
      _database_universe_filter_orPtr.asFunction<
          ffi.Pointer<CFilter> Function(
              ffi.Pointer<ffi.Pointer<CFilter>>, int)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CFilter> database_universe_filter_not(
    ffi.Pointer<CFilter> filter,
  ) {
    return _database_universe_filter_not(
      filter,
    );
  }

  late final _database_universe_filter_notPtr = _lookup<
          ffi
          .NativeFunction<ffi.Pointer<CFilter> Function(ffi.Pointer<CFilter>)>>(
      'database_universe_filter_not');
  late final _database_universe_filter_not = _database_universe_filter_notPtr
      .asFunction<ffi.Pointer<CFilter> Function(ffi.Pointer<CFilter>)>(
          isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_insert(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<CDatabaseUniverseTxn> txn,
    int collection_index,
    int count,
    ffi.Pointer<ffi.Pointer<CDatabaseUniverseWriter>> insert,
  ) {
    return _database_universe_insert(
      database_universe,
      txn,
      collection_index,
      count,
      insert,
    );
  }

  late final _database_universe_insertPtr = _lookup<
          ffi.NativeFunction<
              ffi.Uint8 Function(
                  ffi.Pointer<CDatabaseUniverseInstance>,
                  ffi.Pointer<CDatabaseUniverseTxn>,
                  ffi.Uint16,
                  ffi.Uint32,
                  ffi.Pointer<ffi.Pointer<CDatabaseUniverseWriter>>)>>(
      'database_universe_insert');
  late final _database_universe_insert =
      _database_universe_insertPtr.asFunction<
          int Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>,
              int,
              int,
              ffi.Pointer<ffi.Pointer<CDatabaseUniverseWriter>>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_insert_save(
    ffi.Pointer<CDatabaseUniverseWriter> insert,
    int id,
  ) {
    return _database_universe_insert_save(
      insert,
      id,
    );
  }

  late final _database_universe_insert_savePtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(ffi.Pointer<CDatabaseUniverseWriter>,
              DatabaseUniverseI64)>>('database_universe_insert_save');
  late final _database_universe_insert_save = _database_universe_insert_savePtr
      .asFunction<int Function(ffi.Pointer<CDatabaseUniverseWriter>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_insert_finish(
    ffi.Pointer<CDatabaseUniverseWriter> insert,
    ffi.Pointer<ffi.Pointer<CDatabaseUniverseTxn>> txn,
  ) {
    return _database_universe_insert_finish(
      insert,
      txn,
    );
  }

  late final _database_universe_insert_finishPtr = _lookup<
          ffi.NativeFunction<
              ffi.Uint8 Function(ffi.Pointer<CDatabaseUniverseWriter>,
                  ffi.Pointer<ffi.Pointer<CDatabaseUniverseTxn>>)>>(
      'database_universe_insert_finish');
  late final _database_universe_insert_finish =
      _database_universe_insert_finishPtr.asFunction<
          int Function(ffi.Pointer<CDatabaseUniverseWriter>,
              ffi.Pointer<ffi.Pointer<CDatabaseUniverseTxn>>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_insert_abort(
    ffi.Pointer<CDatabaseUniverseWriter> insert,
  ) {
    return _database_universe_insert_abort(
      insert,
    );
  }

  late final _database_universe_insert_abortPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<CDatabaseUniverseWriter>)>>(
      'database_universe_insert_abort');
  late final _database_universe_insert_abort =
      _database_universe_insert_abortPtr
          .asFunction<void Function(ffi.Pointer<CDatabaseUniverseWriter>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<ffi.Char> database_universe_version() {
    return _database_universe_version();
  }

  late final _database_universe_versionPtr =
      _lookup<ffi.NativeFunction<ffi.Pointer<ffi.Char> Function()>>(
          'database_universe_version');
  late final _database_universe_version = _database_universe_versionPtr
      .asFunction<ffi.Pointer<ffi.Char> Function()>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CDatabaseUniverseInstance> database_universe_get_instance(
    int instance_id,
    bool sqlite,
  ) {
    return _database_universe_get_instance(
      instance_id,
      sqlite,
    );
  }

  late final _database_universe_get_instancePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CDatabaseUniverseInstance> Function(
              ffi.Uint32, ffi.Bool)>>('database_universe_get_instance');
  late final _database_universe_get_instance =
      _database_universe_get_instancePtr.asFunction<
          ffi.Pointer<CDatabaseUniverseInstance> Function(int, bool)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_open_instance(
    ffi.Pointer<ffi.Pointer<CDatabaseUniverseInstance>> database_universe,
    int instance_id,
    ffi.Pointer<CString> name,
    ffi.Pointer<CString> path,
    bool sqlite,
    ffi.Pointer<CString> schema_json,
    int max_size_mib,
    ffi.Pointer<CString> encryption_key,
    int compact_min_file_size,
    int compact_min_bytes,
    double compact_min_ratio,
  ) {
    return _database_universe_open_instance(
      database_universe,
      instance_id,
      name,
      path,
      sqlite,
      schema_json,
      max_size_mib,
      encryption_key,
      compact_min_file_size,
      compact_min_bytes,
      compact_min_ratio,
    );
  }

  late final _database_universe_open_instancePtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(
              ffi.Pointer<ffi.Pointer<CDatabaseUniverseInstance>>,
              ffi.Uint32,
              ffi.Pointer<CString>,
              ffi.Pointer<CString>,
              ffi.Bool,
              ffi.Pointer<CString>,
              ffi.Uint32,
              ffi.Pointer<CString>,
              ffi.Uint32,
              ffi.Uint32,
              ffi.Float)>>('database_universe_open_instance');
  late final _database_universe_open_instance =
      _database_universe_open_instancePtr.asFunction<
          int Function(
              ffi.Pointer<ffi.Pointer<CDatabaseUniverseInstance>>,
              int,
              ffi.Pointer<CString>,
              ffi.Pointer<CString>,
              bool,
              ffi.Pointer<CString>,
              int,
              ffi.Pointer<CString>,
              int,
              int,
              double)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_get_name(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<ffi.Pointer<ffi.Uint8>> name,
  ) {
    return _database_universe_get_name(
      database_universe,
      name,
    );
  }

  late final _database_universe_get_namePtr = _lookup<
          ffi.NativeFunction<
              ffi.Uint32 Function(ffi.Pointer<CDatabaseUniverseInstance>,
                  ffi.Pointer<ffi.Pointer<ffi.Uint8>>)>>(
      'database_universe_get_name');
  late final _database_universe_get_name =
      _database_universe_get_namePtr.asFunction<
          int Function(ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<ffi.Pointer<ffi.Uint8>>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_get_dir(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<ffi.Pointer<ffi.Uint8>> dir,
  ) {
    return _database_universe_get_dir(
      database_universe,
      dir,
    );
  }

  late final _database_universe_get_dirPtr = _lookup<
          ffi.NativeFunction<
              ffi.Uint32 Function(ffi.Pointer<CDatabaseUniverseInstance>,
                  ffi.Pointer<ffi.Pointer<ffi.Uint8>>)>>(
      'database_universe_get_dir');
  late final _database_universe_get_dir =
      _database_universe_get_dirPtr.asFunction<
          int Function(ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<ffi.Pointer<ffi.Uint8>>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_change_encryption_key(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<CString> encryption_key,
  ) {
    return _database_universe_change_encryption_key(
      database_universe,
      encryption_key,
    );
  }

  late final _database_universe_change_encryption_keyPtr = _lookup<
          ffi.NativeFunction<
              ffi.Uint8 Function(ffi.Pointer<CDatabaseUniverseInstance>,
                  ffi.Pointer<CString>)>>(
      'database_universe_change_encryption_key');
  late final _database_universe_change_encryption_key =
      _database_universe_change_encryption_keyPtr.asFunction<
          int Function(
              ffi.Pointer<CDatabaseUniverseInstance>, ffi.Pointer<CString>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_txn_begin(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<ffi.Pointer<CDatabaseUniverseTxn>> txn,
    bool write,
  ) {
    return _database_universe_txn_begin(
      database_universe,
      txn,
      write,
    );
  }

  late final _database_universe_txn_beginPtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<ffi.Pointer<CDatabaseUniverseTxn>>,
              ffi.Bool)>>('database_universe_txn_begin');
  late final _database_universe_txn_begin =
      _database_universe_txn_beginPtr.asFunction<
          int Function(ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<ffi.Pointer<CDatabaseUniverseTxn>>, bool)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_txn_commit(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<CDatabaseUniverseTxn> txn,
  ) {
    return _database_universe_txn_commit(
      database_universe,
      txn,
    );
  }

  late final _database_universe_txn_commitPtr = _lookup<
          ffi.NativeFunction<
              ffi.Uint8 Function(ffi.Pointer<CDatabaseUniverseInstance>,
                  ffi.Pointer<CDatabaseUniverseTxn>)>>(
      'database_universe_txn_commit');
  late final _database_universe_txn_commit =
      _database_universe_txn_commitPtr.asFunction<
          int Function(ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_txn_abort(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<CDatabaseUniverseTxn> txn,
  ) {
    return _database_universe_txn_abort(
      database_universe,
      txn,
    );
  }

  late final _database_universe_txn_abortPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<CDatabaseUniverseInstance>,
                  ffi.Pointer<CDatabaseUniverseTxn>)>>(
      'database_universe_txn_abort');
  late final _database_universe_txn_abort =
      _database_universe_txn_abortPtr.asFunction<
          void Function(ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_auto_increment(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    int collection_index,
  ) {
    return _database_universe_auto_increment(
      database_universe,
      collection_index,
    );
  }

  late final _database_universe_auto_incrementPtr = _lookup<
      ffi.NativeFunction<
          DatabaseUniverseI64 Function(ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Uint16)>>('database_universe_auto_increment');
  late final _database_universe_auto_increment =
      _database_universe_auto_incrementPtr.asFunction<
          int Function(ffi.Pointer<CDatabaseUniverseInstance>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_cursor(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<CDatabaseUniverseTxn> txn,
    int collection_index,
    ffi.Pointer<ffi.Pointer<CDatabaseUniverseCursor>> cursor,
  ) {
    return _database_universe_cursor(
      database_universe,
      txn,
      collection_index,
      cursor,
    );
  }

  late final _database_universe_cursorPtr = _lookup<
          ffi.NativeFunction<
              ffi.Uint8 Function(
                  ffi.Pointer<CDatabaseUniverseInstance>,
                  ffi.Pointer<CDatabaseUniverseTxn>,
                  ffi.Uint16,
                  ffi.Pointer<ffi.Pointer<CDatabaseUniverseCursor>>)>>(
      'database_universe_cursor');
  late final _database_universe_cursor =
      _database_universe_cursorPtr.asFunction<
          int Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>,
              int,
              ffi.Pointer<ffi.Pointer<CDatabaseUniverseCursor>>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_delete(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<CDatabaseUniverseTxn> txn,
    int collection_index,
    int id,
    ffi.Pointer<ffi.Bool> deleted,
  ) {
    return _database_universe_delete(
      database_universe,
      txn,
      collection_index,
      id,
      deleted,
    );
  }

  late final _database_universe_deletePtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>,
              ffi.Uint16,
              DatabaseUniverseI64,
              ffi.Pointer<ffi.Bool>)>>('database_universe_delete');
  late final _database_universe_delete =
      _database_universe_deletePtr.asFunction<
          int Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>,
              int,
              int,
              ffi.Pointer<ffi.Bool>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_count(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<CDatabaseUniverseTxn> txn,
    int collection_index,
    ffi.Pointer<ffi.Uint32> count,
  ) {
    return _database_universe_count(
      database_universe,
      txn,
      collection_index,
      count,
    );
  }

  late final _database_universe_countPtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>,
              ffi.Uint16,
              ffi.Pointer<ffi.Uint32>)>>('database_universe_count');
  late final _database_universe_count = _database_universe_countPtr.asFunction<
      int Function(ffi.Pointer<CDatabaseUniverseInstance>,
          ffi.Pointer<CDatabaseUniverseTxn>, int, ffi.Pointer<ffi.Uint32>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_clear(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<CDatabaseUniverseTxn> txn,
    int collection_index,
  ) {
    return _database_universe_clear(
      database_universe,
      txn,
      collection_index,
    );
  }

  late final _database_universe_clearPtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>,
              ffi.Uint16)>>('database_universe_clear');
  late final _database_universe_clear = _database_universe_clearPtr.asFunction<
      int Function(ffi.Pointer<CDatabaseUniverseInstance>,
          ffi.Pointer<CDatabaseUniverseTxn>, int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_get_size(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<CDatabaseUniverseTxn> txn,
    int collection_index,
    bool include_indexes,
  ) {
    return _database_universe_get_size(
      database_universe,
      txn,
      collection_index,
      include_indexes,
    );
  }

  late final _database_universe_get_sizePtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint32 Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>,
              ffi.Uint16,
              ffi.Bool)>>('database_universe_get_size');
  late final _database_universe_get_size =
      _database_universe_get_sizePtr.asFunction<
          int Function(ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>, int, bool)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_import_json(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<ffi.Pointer<CDatabaseUniverseTxn>> txn,
    int collection_index,
    ffi.Pointer<CString> json,
    ffi.Pointer<ffi.Uint32> count,
  ) {
    return _database_universe_import_json(
      database_universe,
      txn,
      collection_index,
      json,
      count,
    );
  }

  late final _database_universe_import_jsonPtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<ffi.Pointer<CDatabaseUniverseTxn>>,
              ffi.Uint16,
              ffi.Pointer<CString>,
              ffi.Pointer<ffi.Uint32>)>>('database_universe_import_json');
  late final _database_universe_import_json =
      _database_universe_import_jsonPtr.asFunction<
          int Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<ffi.Pointer<CDatabaseUniverseTxn>>,
              int,
              ffi.Pointer<CString>,
              ffi.Pointer<ffi.Uint32>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_copy(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<CString> path,
  ) {
    return _database_universe_copy(
      database_universe,
      path,
    );
  }

  late final _database_universe_copyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CString>)>>('database_universe_copy');
  late final _database_universe_copy = _database_universe_copyPtr.asFunction<
      int Function(
          ffi.Pointer<CDatabaseUniverseInstance>, ffi.Pointer<CString>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_verify(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<CDatabaseUniverseTxn> txn,
  ) {
    return _database_universe_verify(
      database_universe,
      txn,
    );
  }

  late final _database_universe_verifyPtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>)>>('database_universe_verify');
  late final _database_universe_verify =
      _database_universe_verifyPtr.asFunction<
          int Function(ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_close(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    bool delete_,
  ) {
    return _database_universe_close(
      database_universe,
      delete_,
    );
  }

  late final _database_universe_closePtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Bool)>>('database_universe_close');
  late final _database_universe_close = _database_universe_closePtr
      .asFunction<int Function(ffi.Pointer<CDatabaseUniverseInstance>, bool)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_query_new(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    int collection_index,
    ffi.Pointer<ffi.Pointer<CDatabaseUniverseQueryBuilder>> query_builder,
  ) {
    return _database_universe_query_new(
      database_universe,
      collection_index,
      query_builder,
    );
  }

  late final _database_universe_query_newPtr = _lookup<
          ffi.NativeFunction<
              ffi.Uint8 Function(
                  ffi.Pointer<CDatabaseUniverseInstance>,
                  ffi.Uint16,
                  ffi.Pointer<ffi.Pointer<CDatabaseUniverseQueryBuilder>>)>>(
      'database_universe_query_new');
  late final _database_universe_query_new =
      _database_universe_query_newPtr.asFunction<
          int Function(ffi.Pointer<CDatabaseUniverseInstance>, int,
              ffi.Pointer<ffi.Pointer<CDatabaseUniverseQueryBuilder>>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_query_set_filter(
    ffi.Pointer<CDatabaseUniverseQueryBuilder> builder,
    ffi.Pointer<CFilter> filter,
  ) {
    return _database_universe_query_set_filter(
      builder,
      filter,
    );
  }

  late final _database_universe_query_set_filterPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<CDatabaseUniverseQueryBuilder>,
              ffi.Pointer<CFilter>)>>('database_universe_query_set_filter');
  late final _database_universe_query_set_filter =
      _database_universe_query_set_filterPtr.asFunction<
          void Function(ffi.Pointer<CDatabaseUniverseQueryBuilder>,
              ffi.Pointer<CFilter>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_query_add_sort(
    ffi.Pointer<CDatabaseUniverseQueryBuilder> builder,
    int property_index,
    bool ascending,
    bool case_sensitive,
  ) {
    return _database_universe_query_add_sort(
      builder,
      property_index,
      ascending,
      case_sensitive,
    );
  }

  late final _database_universe_query_add_sortPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<CDatabaseUniverseQueryBuilder>,
              ffi.Uint16,
              ffi.Bool,
              ffi.Bool)>>('database_universe_query_add_sort');
  late final _database_universe_query_add_sort =
      _database_universe_query_add_sortPtr.asFunction<
          void Function(
              ffi.Pointer<CDatabaseUniverseQueryBuilder>, int, bool, bool)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_query_add_distinct(
    ffi.Pointer<CDatabaseUniverseQueryBuilder> builder,
    int property_index,
    bool case_sensitive,
  ) {
    return _database_universe_query_add_distinct(
      builder,
      property_index,
      case_sensitive,
    );
  }

  late final _database_universe_query_add_distinctPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<CDatabaseUniverseQueryBuilder>,
              ffi.Uint16, ffi.Bool)>>('database_universe_query_add_distinct');
  late final _database_universe_query_add_distinct =
      _database_universe_query_add_distinctPtr.asFunction<
          void Function(
              ffi.Pointer<CDatabaseUniverseQueryBuilder>, int, bool)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CDatabaseUniverseQuery> database_universe_query_build(
    ffi.Pointer<CDatabaseUniverseQueryBuilder> builder,
  ) {
    return _database_universe_query_build(
      builder,
    );
  }

  late final _database_universe_query_buildPtr = _lookup<
          ffi.NativeFunction<
              ffi.Pointer<CDatabaseUniverseQuery> Function(
                  ffi.Pointer<CDatabaseUniverseQueryBuilder>)>>(
      'database_universe_query_build');
  late final _database_universe_query_build =
      _database_universe_query_buildPtr.asFunction<
          ffi.Pointer<CDatabaseUniverseQuery> Function(
              ffi.Pointer<CDatabaseUniverseQueryBuilder>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_query_cursor(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<CDatabaseUniverseTxn> txn,
    ffi.Pointer<CDatabaseUniverseQuery> query,
    ffi.Pointer<ffi.Pointer<CDatabaseUniverseQueryCursor>> cursor,
    int offset,
    int limit,
  ) {
    return _database_universe_query_cursor(
      database_universe,
      txn,
      query,
      cursor,
      offset,
      limit,
    );
  }

  late final _database_universe_query_cursorPtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>,
              ffi.Pointer<CDatabaseUniverseQuery>,
              ffi.Pointer<ffi.Pointer<CDatabaseUniverseQueryCursor>>,
              ffi.Uint32,
              ffi.Uint32)>>('database_universe_query_cursor');
  late final _database_universe_query_cursor =
      _database_universe_query_cursorPtr.asFunction<
          int Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>,
              ffi.Pointer<CDatabaseUniverseQuery>,
              ffi.Pointer<ffi.Pointer<CDatabaseUniverseQueryCursor>>,
              int,
              int)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_query_aggregate(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<CDatabaseUniverseTxn> txn,
    ffi.Pointer<CDatabaseUniverseQuery> query,
    int aggregation,
    int property_index,
    ffi.Pointer<ffi.Pointer<CDatabaseUniverseValue>> value,
  ) {
    return _database_universe_query_aggregate(
      database_universe,
      txn,
      query,
      aggregation,
      property_index,
      value,
    );
  }

  late final _database_universe_query_aggregatePtr = _lookup<
          ffi.NativeFunction<
              ffi.Uint8 Function(
                  ffi.Pointer<CDatabaseUniverseInstance>,
                  ffi.Pointer<CDatabaseUniverseTxn>,
                  ffi.Pointer<CDatabaseUniverseQuery>,
                  ffi.Uint8,
                  ffi.Uint16,
                  ffi.Pointer<ffi.Pointer<CDatabaseUniverseValue>>)>>(
      'database_universe_query_aggregate');
  late final _database_universe_query_aggregate =
      _database_universe_query_aggregatePtr.asFunction<
          int Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>,
              ffi.Pointer<CDatabaseUniverseQuery>,
              int,
              int,
              ffi.Pointer<ffi.Pointer<CDatabaseUniverseValue>>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_query_delete(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<CDatabaseUniverseTxn> txn,
    ffi.Pointer<CDatabaseUniverseQuery> query,
    int offset,
    int limit,
    ffi.Pointer<ffi.Uint32> count,
  ) {
    return _database_universe_query_delete(
      database_universe,
      txn,
      query,
      offset,
      limit,
      count,
    );
  }

  late final _database_universe_query_deletePtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>,
              ffi.Pointer<CDatabaseUniverseQuery>,
              ffi.Uint32,
              ffi.Uint32,
              ffi.Pointer<ffi.Uint32>)>>('database_universe_query_delete');
  late final _database_universe_query_delete =
      _database_universe_query_deletePtr.asFunction<
          int Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>,
              ffi.Pointer<CDatabaseUniverseQuery>,
              int,
              int,
              ffi.Pointer<ffi.Uint32>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_query_free(
    ffi.Pointer<CDatabaseUniverseQuery> query,
  ) {
    return _database_universe_query_free(
      query,
    );
  }

  late final _database_universe_query_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<CDatabaseUniverseQuery>)>>(
      'database_universe_query_free');
  late final _database_universe_query_free = _database_universe_query_freePtr
      .asFunction<void Function(ffi.Pointer<CDatabaseUniverseQuery>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_read_id(
    ffi.Pointer<CDatabaseUniverseReader> reader,
  ) {
    return _database_universe_read_id(
      reader,
    );
  }

  late final _database_universe_read_idPtr = _lookup<
          ffi.NativeFunction<
              DatabaseUniverseI64 Function(
                  ffi.Pointer<CDatabaseUniverseReader>)>>(
      'database_universe_read_id');
  late final _database_universe_read_id = _database_universe_read_idPtr
      .asFunction<int Function(ffi.Pointer<CDatabaseUniverseReader>)>(
          isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_read_null(
    ffi.Pointer<CDatabaseUniverseReader> reader,
    int index,
  ) {
    return _database_universe_read_null(
      reader,
      index,
    );
  }

  late final _database_universe_read_nullPtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(ffi.Pointer<CDatabaseUniverseReader>,
              ffi.Uint32)>>('database_universe_read_null');
  late final _database_universe_read_null = _database_universe_read_nullPtr
      .asFunction<int Function(ffi.Pointer<CDatabaseUniverseReader>, int)>(
          isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_read_bool(
    ffi.Pointer<CDatabaseUniverseReader> reader,
    int index,
  ) {
    return _database_universe_read_bool(
      reader,
      index,
    );
  }

  late final _database_universe_read_boolPtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(ffi.Pointer<CDatabaseUniverseReader>,
              ffi.Uint32)>>('database_universe_read_bool');
  late final _database_universe_read_bool = _database_universe_read_boolPtr
      .asFunction<int Function(ffi.Pointer<CDatabaseUniverseReader>, int)>(
          isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_read_byte(
    ffi.Pointer<CDatabaseUniverseReader> reader,
    int index,
  ) {
    return _database_universe_read_byte(
      reader,
      index,
    );
  }

  late final _database_universe_read_bytePtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(ffi.Pointer<CDatabaseUniverseReader>,
              ffi.Uint32)>>('database_universe_read_byte');
  late final _database_universe_read_byte = _database_universe_read_bytePtr
      .asFunction<int Function(ffi.Pointer<CDatabaseUniverseReader>, int)>(
          isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_read_int(
    ffi.Pointer<CDatabaseUniverseReader> reader,
    int index,
  ) {
    return _database_universe_read_int(
      reader,
      index,
    );
  }

  late final _database_universe_read_intPtr = _lookup<
      ffi.NativeFunction<
          ffi.Int32 Function(ffi.Pointer<CDatabaseUniverseReader>,
              ffi.Uint32)>>('database_universe_read_int');
  late final _database_universe_read_int = _database_universe_read_intPtr
      .asFunction<int Function(ffi.Pointer<CDatabaseUniverseReader>, int)>(
          isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  double database_universe_read_float(
    ffi.Pointer<CDatabaseUniverseReader> reader,
    int index,
  ) {
    return _database_universe_read_float(
      reader,
      index,
    );
  }

  late final _database_universe_read_floatPtr = _lookup<
      ffi.NativeFunction<
          ffi.Float Function(ffi.Pointer<CDatabaseUniverseReader>,
              ffi.Uint32)>>('database_universe_read_float');
  late final _database_universe_read_float = _database_universe_read_floatPtr
      .asFunction<double Function(ffi.Pointer<CDatabaseUniverseReader>, int)>(
          isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_read_long(
    ffi.Pointer<CDatabaseUniverseReader> reader,
    int index,
  ) {
    return _database_universe_read_long(
      reader,
      index,
    );
  }

  late final _database_universe_read_longPtr = _lookup<
      ffi.NativeFunction<
          DatabaseUniverseI64 Function(ffi.Pointer<CDatabaseUniverseReader>,
              ffi.Uint32)>>('database_universe_read_long');
  late final _database_universe_read_long = _database_universe_read_longPtr
      .asFunction<int Function(ffi.Pointer<CDatabaseUniverseReader>, int)>(
          isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  double database_universe_read_double(
    ffi.Pointer<CDatabaseUniverseReader> reader,
    int index,
  ) {
    return _database_universe_read_double(
      reader,
      index,
    );
  }

  late final _database_universe_read_doublePtr = _lookup<
      ffi.NativeFunction<
          ffi.Double Function(ffi.Pointer<CDatabaseUniverseReader>,
              ffi.Uint32)>>('database_universe_read_double');
  late final _database_universe_read_double = _database_universe_read_doublePtr
      .asFunction<double Function(ffi.Pointer<CDatabaseUniverseReader>, int)>(
          isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_read_string(
    ffi.Pointer<CDatabaseUniverseReader> reader,
    int index,
    ffi.Pointer<ffi.Pointer<ffi.Uint8>> value,
    ffi.Pointer<ffi.Bool> is_ascii,
  ) {
    return _database_universe_read_string(
      reader,
      index,
      value,
      is_ascii,
    );
  }

  late final _database_universe_read_stringPtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint32 Function(
              ffi.Pointer<CDatabaseUniverseReader>,
              ffi.Uint32,
              ffi.Pointer<ffi.Pointer<ffi.Uint8>>,
              ffi.Pointer<ffi.Bool>)>>('database_universe_read_string');
  late final _database_universe_read_string =
      _database_universe_read_stringPtr.asFunction<
          int Function(
              ffi.Pointer<CDatabaseUniverseReader>,
              int,
              ffi.Pointer<ffi.Pointer<ffi.Uint8>>,
              ffi.Pointer<ffi.Bool>)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CDatabaseUniverseReader> database_universe_read_object(
    ffi.Pointer<CDatabaseUniverseReader> reader,
    int index,
  ) {
    return _database_universe_read_object(
      reader,
      index,
    );
  }

  late final _database_universe_read_objectPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CDatabaseUniverseReader> Function(
              ffi.Pointer<CDatabaseUniverseReader>,
              ffi.Uint32)>>('database_universe_read_object');
  late final _database_universe_read_object =
      _database_universe_read_objectPtr.asFunction<
          ffi.Pointer<CDatabaseUniverseReader> Function(
              ffi.Pointer<CDatabaseUniverseReader>, int)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_read_list(
    ffi.Pointer<CDatabaseUniverseReader> reader,
    int index,
    ffi.Pointer<ffi.Pointer<CDatabaseUniverseReader>> list_reader,
  ) {
    return _database_universe_read_list(
      reader,
      index,
      list_reader,
    );
  }

  late final _database_universe_read_listPtr = _lookup<
          ffi.NativeFunction<
              ffi.Uint32 Function(
                  ffi.Pointer<CDatabaseUniverseReader>,
                  ffi.Uint32,
                  ffi.Pointer<ffi.Pointer<CDatabaseUniverseReader>>)>>(
      'database_universe_read_list');
  late final _database_universe_read_list =
      _database_universe_read_listPtr.asFunction<
          int Function(ffi.Pointer<CDatabaseUniverseReader>, int,
              ffi.Pointer<ffi.Pointer<CDatabaseUniverseReader>>)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_read_to_json(
    ffi.Pointer<CDatabaseUniverseReader> reader,
    ffi.Pointer<ffi.Pointer<ffi.Uint8>> buffer,
    ffi.Pointer<ffi.Uint32> buffer_size,
  ) {
    return _database_universe_read_to_json(
      reader,
      buffer,
      buffer_size,
    );
  }

  late final _database_universe_read_to_jsonPtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint32 Function(
              ffi.Pointer<CDatabaseUniverseReader>,
              ffi.Pointer<ffi.Pointer<ffi.Uint8>>,
              ffi.Pointer<ffi.Uint32>)>>('database_universe_read_to_json');
  late final _database_universe_read_to_json =
      _database_universe_read_to_jsonPtr.asFunction<
          int Function(
              ffi.Pointer<CDatabaseUniverseReader>,
              ffi.Pointer<ffi.Pointer<ffi.Uint8>>,
              ffi.Pointer<ffi.Uint32>)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_read_free(
    ffi.Pointer<CDatabaseUniverseReader> reader,
  ) {
    return _database_universe_read_free(
      reader,
    );
  }

  late final _database_universe_read_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<CDatabaseUniverseReader>)>>(
      'database_universe_read_free');
  late final _database_universe_read_free = _database_universe_read_freePtr
      .asFunction<void Function(ffi.Pointer<CDatabaseUniverseReader>)>(
          isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_update(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<CDatabaseUniverseTxn> txn,
    int collection_index,
    int id,
    ffi.Pointer<CDatabaseUniverseUpdate> update,
    ffi.Pointer<ffi.Bool> updated,
  ) {
    return _database_universe_update(
      database_universe,
      txn,
      collection_index,
      id,
      update,
      updated,
    );
  }

  late final _database_universe_updatePtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>,
              ffi.Uint16,
              DatabaseUniverseI64,
              ffi.Pointer<CDatabaseUniverseUpdate>,
              ffi.Pointer<ffi.Bool>)>>('database_universe_update');
  late final _database_universe_update =
      _database_universe_updatePtr.asFunction<
          int Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>,
              int,
              int,
              ffi.Pointer<CDatabaseUniverseUpdate>,
              ffi.Pointer<ffi.Bool>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_query_update(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<CDatabaseUniverseTxn> txn,
    ffi.Pointer<CDatabaseUniverseQuery> query,
    int offset,
    int limit,
    ffi.Pointer<CDatabaseUniverseUpdate> update,
    ffi.Pointer<ffi.Uint32> updated,
  ) {
    return _database_universe_query_update(
      database_universe,
      txn,
      query,
      offset,
      limit,
      update,
      updated,
    );
  }

  late final _database_universe_query_updatePtr = _lookup<
      ffi.NativeFunction<
          ffi.Uint8 Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>,
              ffi.Pointer<CDatabaseUniverseQuery>,
              ffi.Uint32,
              ffi.Uint32,
              ffi.Pointer<CDatabaseUniverseUpdate>,
              ffi.Pointer<ffi.Uint32>)>>('database_universe_query_update');
  late final _database_universe_query_update =
      _database_universe_query_updatePtr.asFunction<
          int Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseTxn>,
              ffi.Pointer<CDatabaseUniverseQuery>,
              int,
              int,
              ffi.Pointer<CDatabaseUniverseUpdate>,
              ffi.Pointer<ffi.Uint32>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CDatabaseUniverseUpdate> database_universe_update_new() {
    return _database_universe_update_new();
  }

  late final _database_universe_update_newPtr = _lookup<
          ffi.NativeFunction<ffi.Pointer<CDatabaseUniverseUpdate> Function()>>(
      'database_universe_update_new');
  late final _database_universe_update_new = _database_universe_update_newPtr
      .asFunction<ffi.Pointer<CDatabaseUniverseUpdate> Function()>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_update_add_value(
    ffi.Pointer<CDatabaseUniverseUpdate> update,
    int property_index,
    ffi.Pointer<CDatabaseUniverseValue> value,
  ) {
    return _database_universe_update_add_value(
      update,
      property_index,
      value,
    );
  }

  late final _database_universe_update_add_valuePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<CDatabaseUniverseUpdate>,
                  ffi.Uint16, ffi.Pointer<CDatabaseUniverseValue>)>>(
      'database_universe_update_add_value');
  late final _database_universe_update_add_value =
      _database_universe_update_add_valuePtr.asFunction<
          void Function(ffi.Pointer<CDatabaseUniverseUpdate>, int,
              ffi.Pointer<CDatabaseUniverseValue>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CDatabaseUniverseValue> database_universe_value_bool(
    bool value,
  ) {
    return _database_universe_value_bool(
      value,
    );
  }

  late final _database_universe_value_boolPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CDatabaseUniverseValue> Function(
              ffi.Bool)>>('database_universe_value_bool');
  late final _database_universe_value_bool = _database_universe_value_boolPtr
      .asFunction<ffi.Pointer<CDatabaseUniverseValue> Function(bool)>(
          isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CDatabaseUniverseValue> database_universe_value_integer(
    int value,
  ) {
    return _database_universe_value_integer(
      value,
    );
  }

  late final _database_universe_value_integerPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CDatabaseUniverseValue> Function(
              DatabaseUniverseI64)>>('database_universe_value_integer');
  late final _database_universe_value_integer =
      _database_universe_value_integerPtr
          .asFunction<ffi.Pointer<CDatabaseUniverseValue> Function(int)>(
              isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CDatabaseUniverseValue> database_universe_value_real(
    double value,
  ) {
    return _database_universe_value_real(
      value,
    );
  }

  late final _database_universe_value_realPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CDatabaseUniverseValue> Function(
              ffi.Double)>>('database_universe_value_real');
  late final _database_universe_value_real = _database_universe_value_realPtr
      .asFunction<ffi.Pointer<CDatabaseUniverseValue> Function(double)>(
          isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CDatabaseUniverseValue> database_universe_value_string(
    ffi.Pointer<CString> value,
  ) {
    return _database_universe_value_string(
      value,
    );
  }

  late final _database_universe_value_stringPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CDatabaseUniverseValue> Function(
              ffi.Pointer<CString>)>>('database_universe_value_string');
  late final _database_universe_value_string =
      _database_universe_value_stringPtr.asFunction<
          ffi.Pointer<CDatabaseUniverseValue> Function(
              ffi.Pointer<CString>)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_value_get_bool(
    ffi.Pointer<CDatabaseUniverseValue> value,
  ) {
    return _database_universe_value_get_bool(
      value,
    );
  }

  late final _database_universe_value_get_boolPtr = _lookup<
          ffi.NativeFunction<
              ffi.Uint8 Function(ffi.Pointer<CDatabaseUniverseValue>)>>(
      'database_universe_value_get_bool');
  late final _database_universe_value_get_bool =
      _database_universe_value_get_boolPtr
          .asFunction<int Function(ffi.Pointer<CDatabaseUniverseValue>)>(
              isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_value_get_integer(
    ffi.Pointer<CDatabaseUniverseValue> value,
  ) {
    return _database_universe_value_get_integer(
      value,
    );
  }

  late final _database_universe_value_get_integerPtr = _lookup<
          ffi.NativeFunction<
              DatabaseUniverseI64 Function(
                  ffi.Pointer<CDatabaseUniverseValue>)>>(
      'database_universe_value_get_integer');
  late final _database_universe_value_get_integer =
      _database_universe_value_get_integerPtr
          .asFunction<int Function(ffi.Pointer<CDatabaseUniverseValue>)>(
              isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  double database_universe_value_get_real(
    ffi.Pointer<CDatabaseUniverseValue> value,
  ) {
    return _database_universe_value_get_real(
      value,
    );
  }

  late final _database_universe_value_get_realPtr = _lookup<
          ffi.NativeFunction<
              ffi.Double Function(ffi.Pointer<CDatabaseUniverseValue>)>>(
      'database_universe_value_get_real');
  late final _database_universe_value_get_real =
      _database_universe_value_get_realPtr
          .asFunction<double Function(ffi.Pointer<CDatabaseUniverseValue>)>(
              isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_value_get_string(
    ffi.Pointer<CDatabaseUniverseValue> value,
    ffi.Pointer<ffi.Pointer<ffi.Uint8>> str,
  ) {
    return _database_universe_value_get_string(
      value,
      str,
    );
  }

  late final _database_universe_value_get_stringPtr = _lookup<
          ffi.NativeFunction<
              ffi.Uint32 Function(ffi.Pointer<CDatabaseUniverseValue>,
                  ffi.Pointer<ffi.Pointer<ffi.Uint8>>)>>(
      'database_universe_value_get_string');
  late final _database_universe_value_get_string =
      _database_universe_value_get_stringPtr.asFunction<
          int Function(ffi.Pointer<CDatabaseUniverseValue>,
              ffi.Pointer<ffi.Pointer<ffi.Uint8>>)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_value_free(
    ffi.Pointer<CDatabaseUniverseValue> value,
  ) {
    return _database_universe_value_free(
      value,
    );
  }

  late final _database_universe_value_freePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<CDatabaseUniverseValue>)>>(
      'database_universe_value_free');
  late final _database_universe_value_free = _database_universe_value_freePtr
      .asFunction<void Function(ffi.Pointer<CDatabaseUniverseValue>)>(
          isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_watch_collection(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    int collection_index,
    int port,
    ffi.Pointer<ffi.Pointer<CWatchHandle>> handle,
  ) {
    return _database_universe_watch_collection(
      database_universe,
      collection_index,
      port,
      handle,
    );
  }

  late final _database_universe_watch_collectionPtr = _lookup<
          ffi.NativeFunction<
              ffi.Uint8 Function(
                  ffi.Pointer<CDatabaseUniverseInstance>,
                  ffi.Uint16,
                  DartPort,
                  ffi.Pointer<ffi.Pointer<CWatchHandle>>)>>(
      'database_universe_watch_collection');
  late final _database_universe_watch_collection =
      _database_universe_watch_collectionPtr.asFunction<
          int Function(ffi.Pointer<CDatabaseUniverseInstance>, int, int,
              ffi.Pointer<ffi.Pointer<CWatchHandle>>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_watch_object(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    int collection_index,
    int id,
    int port,
    ffi.Pointer<ffi.Pointer<CWatchHandle>> handle,
  ) {
    return _database_universe_watch_object(
      database_universe,
      collection_index,
      id,
      port,
      handle,
    );
  }

  late final _database_universe_watch_objectPtr = _lookup<
          ffi.NativeFunction<
              ffi.Uint8 Function(
                  ffi.Pointer<CDatabaseUniverseInstance>,
                  ffi.Uint16,
                  ffi.Int64,
                  DartPort,
                  ffi.Pointer<ffi.Pointer<CWatchHandle>>)>>(
      'database_universe_watch_object');
  late final _database_universe_watch_object =
      _database_universe_watch_objectPtr.asFunction<
          int Function(ffi.Pointer<CDatabaseUniverseInstance>, int, int, int,
              ffi.Pointer<ffi.Pointer<CWatchHandle>>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  int database_universe_watch_query(
    ffi.Pointer<CDatabaseUniverseInstance> database_universe,
    ffi.Pointer<CDatabaseUniverseQuery> query,
    int port,
    ffi.Pointer<ffi.Pointer<CWatchHandle>> handle,
  ) {
    return _database_universe_watch_query(
      database_universe,
      query,
      port,
      handle,
    );
  }

  late final _database_universe_watch_queryPtr = _lookup<
          ffi.NativeFunction<
              ffi.Uint8 Function(
                  ffi.Pointer<CDatabaseUniverseInstance>,
                  ffi.Pointer<CDatabaseUniverseQuery>,
                  DartPort,
                  ffi.Pointer<ffi.Pointer<CWatchHandle>>)>>(
      'database_universe_watch_query');
  late final _database_universe_watch_query =
      _database_universe_watch_queryPtr.asFunction<
          int Function(
              ffi.Pointer<CDatabaseUniverseInstance>,
              ffi.Pointer<CDatabaseUniverseQuery>,
              int,
              ffi.Pointer<ffi.Pointer<CWatchHandle>>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_stop_watching(
    ffi.Pointer<CWatchHandle> handle,
  ) {
    return _database_universe_stop_watching(
      handle,
    );
  }

  late final _database_universe_stop_watchingPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<CWatchHandle>)>>(
          'database_universe_stop_watching');
  late final _database_universe_stop_watching =
      _database_universe_stop_watchingPtr
          .asFunction<void Function(ffi.Pointer<CWatchHandle>)>();

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_write_null(
    ffi.Pointer<CDatabaseUniverseWriter> writer,
    int index,
  ) {
    return _database_universe_write_null(
      writer,
      index,
    );
  }

  late final _database_universe_write_nullPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<CDatabaseUniverseWriter>,
              ffi.Uint32)>>('database_universe_write_null');
  late final _database_universe_write_null = _database_universe_write_nullPtr
      .asFunction<void Function(ffi.Pointer<CDatabaseUniverseWriter>, int)>(
          isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_write_bool(
    ffi.Pointer<CDatabaseUniverseWriter> writer,
    int index,
    bool value,
  ) {
    return _database_universe_write_bool(
      writer,
      index,
      value,
    );
  }

  late final _database_universe_write_boolPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<CDatabaseUniverseWriter>, ffi.Uint32,
              ffi.Bool)>>('database_universe_write_bool');
  late final _database_universe_write_bool =
      _database_universe_write_boolPtr.asFunction<
          void Function(
              ffi.Pointer<CDatabaseUniverseWriter>, int, bool)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_write_byte(
    ffi.Pointer<CDatabaseUniverseWriter> writer,
    int index,
    int value,
  ) {
    return _database_universe_write_byte(
      writer,
      index,
      value,
    );
  }

  late final _database_universe_write_bytePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<CDatabaseUniverseWriter>, ffi.Uint32,
              ffi.Uint8)>>('database_universe_write_byte');
  late final _database_universe_write_byte =
      _database_universe_write_bytePtr.asFunction<
          void Function(
              ffi.Pointer<CDatabaseUniverseWriter>, int, int)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_write_int(
    ffi.Pointer<CDatabaseUniverseWriter> writer,
    int index,
    int value,
  ) {
    return _database_universe_write_int(
      writer,
      index,
      value,
    );
  }

  late final _database_universe_write_intPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<CDatabaseUniverseWriter>, ffi.Uint32,
              ffi.Int32)>>('database_universe_write_int');
  late final _database_universe_write_int =
      _database_universe_write_intPtr.asFunction<
          void Function(
              ffi.Pointer<CDatabaseUniverseWriter>, int, int)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_write_float(
    ffi.Pointer<CDatabaseUniverseWriter> writer,
    int index,
    double value,
  ) {
    return _database_universe_write_float(
      writer,
      index,
      value,
    );
  }

  late final _database_universe_write_floatPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<CDatabaseUniverseWriter>, ffi.Uint32,
              ffi.Float)>>('database_universe_write_float');
  late final _database_universe_write_float =
      _database_universe_write_floatPtr.asFunction<
          void Function(
              ffi.Pointer<CDatabaseUniverseWriter>, int, double)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_write_long(
    ffi.Pointer<CDatabaseUniverseWriter> writer,
    int index,
    int value,
  ) {
    return _database_universe_write_long(
      writer,
      index,
      value,
    );
  }

  late final _database_universe_write_longPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<CDatabaseUniverseWriter>, ffi.Uint32,
              DatabaseUniverseI64)>>('database_universe_write_long');
  late final _database_universe_write_long =
      _database_universe_write_longPtr.asFunction<
          void Function(
              ffi.Pointer<CDatabaseUniverseWriter>, int, int)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_write_double(
    ffi.Pointer<CDatabaseUniverseWriter> writer,
    int index,
    double value,
  ) {
    return _database_universe_write_double(
      writer,
      index,
      value,
    );
  }

  late final _database_universe_write_doublePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<CDatabaseUniverseWriter>, ffi.Uint32,
              ffi.Double)>>('database_universe_write_double');
  late final _database_universe_write_double =
      _database_universe_write_doublePtr.asFunction<
          void Function(
              ffi.Pointer<CDatabaseUniverseWriter>, int, double)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_write_string(
    ffi.Pointer<CDatabaseUniverseWriter> writer,
    int index,
    ffi.Pointer<CString> value,
  ) {
    return _database_universe_write_string(
      writer,
      index,
      value,
    );
  }

  late final _database_universe_write_stringPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Pointer<CDatabaseUniverseWriter>, ffi.Uint32,
              ffi.Pointer<CString>)>>('database_universe_write_string');
  late final _database_universe_write_string =
      _database_universe_write_stringPtr.asFunction<
          void Function(ffi.Pointer<CDatabaseUniverseWriter>, int,
              ffi.Pointer<CString>)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_write_byte_list(
    ffi.Pointer<CDatabaseUniverseWriter> writer,
    int index,
    ffi.Pointer<ffi.Uint8> value,
    int length,
  ) {
    return _database_universe_write_byte_list(
      writer,
      index,
      value,
      length,
    );
  }

  late final _database_universe_write_byte_listPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Pointer<CDatabaseUniverseWriter>,
              ffi.Uint32,
              ffi.Pointer<ffi.Uint8>,
              ffi.Uint32)>>('database_universe_write_byte_list');
  late final _database_universe_write_byte_list =
      _database_universe_write_byte_listPtr.asFunction<
          void Function(ffi.Pointer<CDatabaseUniverseWriter>, int,
              ffi.Pointer<ffi.Uint8>, int)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CDatabaseUniverseWriter> database_universe_write_object(
    ffi.Pointer<CDatabaseUniverseWriter> writer,
    int index,
  ) {
    return _database_universe_write_object(
      writer,
      index,
    );
  }

  late final _database_universe_write_objectPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CDatabaseUniverseWriter> Function(
              ffi.Pointer<CDatabaseUniverseWriter>,
              ffi.Uint32)>>('database_universe_write_object');
  late final _database_universe_write_object =
      _database_universe_write_objectPtr.asFunction<
          ffi.Pointer<CDatabaseUniverseWriter> Function(
              ffi.Pointer<CDatabaseUniverseWriter>, int)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_write_object_end(
    ffi.Pointer<CDatabaseUniverseWriter> writer,
    ffi.Pointer<CDatabaseUniverseWriter> embedded_writer,
  ) {
    return _database_universe_write_object_end(
      writer,
      embedded_writer,
    );
  }

  late final _database_universe_write_object_endPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<CDatabaseUniverseWriter>,
                  ffi.Pointer<CDatabaseUniverseWriter>)>>(
      'database_universe_write_object_end');
  late final _database_universe_write_object_end =
      _database_universe_write_object_endPtr.asFunction<
          void Function(ffi.Pointer<CDatabaseUniverseWriter>,
              ffi.Pointer<CDatabaseUniverseWriter>)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  ffi.Pointer<CDatabaseUniverseWriter> database_universe_write_list(
    ffi.Pointer<CDatabaseUniverseWriter> writer,
    int index,
    int length,
  ) {
    return _database_universe_write_list(
      writer,
      index,
      length,
    );
  }

  late final _database_universe_write_listPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<CDatabaseUniverseWriter> Function(
              ffi.Pointer<CDatabaseUniverseWriter>,
              ffi.Uint32,
              ffi.Uint32)>>('database_universe_write_list');
  late final _database_universe_write_list =
      _database_universe_write_listPtr.asFunction<
          ffi.Pointer<CDatabaseUniverseWriter> Function(
              ffi.Pointer<CDatabaseUniverseWriter>, int, int)>(isLeaf: true);

  /// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
  void database_universe_write_list_end(
    ffi.Pointer<CDatabaseUniverseWriter> writer,
    ffi.Pointer<CDatabaseUniverseWriter> list_writer,
  ) {
    return _database_universe_write_list_end(
      writer,
      list_writer,
    );
  }

  late final _database_universe_write_list_endPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Pointer<CDatabaseUniverseWriter>,
                  ffi.Pointer<CDatabaseUniverseWriter>)>>(
      'database_universe_write_list_end');
  late final _database_universe_write_list_end =
      _database_universe_write_list_endPtr.asFunction<
          void Function(ffi.Pointer<CDatabaseUniverseWriter>,
              ffi.Pointer<CDatabaseUniverseWriter>)>(isLeaf: true);
}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final class CDatabaseUniverseCursor extends ffi.Opaque {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final class CDatabaseUniverseInstance extends ffi.Opaque {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final class CDatabaseUniverseQuery extends ffi.Opaque {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final class CDatabaseUniverseQueryBuilder extends ffi.Opaque {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final class CDatabaseUniverseReader extends ffi.Opaque {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final class CDatabaseUniverseTxn extends ffi.Opaque {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final class CDatabaseUniverseWriter extends ffi.Opaque {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final class CFilter extends ffi.Opaque {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final class CDatabaseUniverseValue extends ffi.Opaque {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final class CString extends ffi.Opaque {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef DatabaseUniverseI64 = ffi.Int64;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef DartDatabaseUniverseI64 = int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final class CDatabaseUniverseQueryCursor extends ffi.Opaque {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final class CDatabaseUniverseUpdate extends ffi.Opaque {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef DartPort = ffi.Int64;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
typedef DartDartPort = int;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
final class CWatchHandle extends ffi.Opaque {}

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int ERROR_PATH = 1;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int ERROR_WRITE_TXN_REQUIRED = 2;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int ERROR_VERSION = 3;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int ERROR_OBJECT_LIMIT_REACHED = 4;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int ERROR_INSTANCE_MISMATCH = 5;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int ERROR_ENCRYPTION = 6;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int ERROR_DB_FULL = 7;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int AGGREGATION_COUNT = 0;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int AGGREGATION_IS_EMPTY = 1;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int AGGREGATION_MIN = 2;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int AGGREGATION_MAX = 3;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int AGGREGATION_SUM = 4;

/// General Library Documentation Undocument By General Corporation & Global Corporation & General Developer
const int AGGREGATION_AVERAGE = 5;
