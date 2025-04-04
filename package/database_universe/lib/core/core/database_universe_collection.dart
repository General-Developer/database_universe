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
part of '../core.dart';

/// Use `DatabaseUniverseCollection` instances to find, query, and create new objects of a
/// given type in DatabaseUniverse.
///
/// You can get an instance of `DatabaseUniverseCollection` by calling `databaseUniverse.get<OBJ>()` or
/// by using the generated `databaseUniverse.yourCollections` getter.
@pragma('vm:isolate-unsendable')
abstract class DatabaseUniverseCollection<ID, OBJ> {
  /// The corresponding DatabaseUniverse instance.
  DatabaseUniverse get databaseUniverse;

  /// The schema of this collection.
  DatabaseUniverseSchema get schema;

  /// Fetch the next auto increment id for this collection.
  ///
  /// After an app restart the auto increment counter will be set to the largest
  /// id in the collection. If the collection is empty, the counter will be set
  /// to 1.
  int autoIncrement();

  /// {@template collection_get}
  /// Get a single object by its [id]. Returns `null` if the object does not
  /// exist.
  /// {@endtemplate}
  OBJ? get(ID id) => getAll([id]).firstOrNull;

  /// {@template collection_get_all}
  /// Get a list of objects by their [ids]. Objects in the list are `null`
  /// if they don't exist.
  /// {@endtemplate}
  List<OBJ?> getAll(List<ID> ids);

  /// Insert or update the [object].
  void put(OBJ object) => putAll([object]);

  /// Insert or update a list of [objects].
  void putAll(List<OBJ> objects);

  /// This is a low level method to update objects.
  ///
  /// It is not recommended to use this method directly, instead use the
  /// generated `update()` method.
  @protected
  int updateProperties(List<ID> ids, Map<int, dynamic> changes);

  /// Delete a single object by its [id].
  ///
  /// Returns whether the object has been deleted.
  bool delete(ID id);

  /// Delete a list of objects by their [ids].
  ///
  /// Returns the number of deleted objects.
  int deleteAll(List<ID> ids);

  /// Start building a query using the [QueryBuilder].
  QueryBuilder<OBJ, OBJ, QStart> where();

  /// Returns the total number of objects in this collection.
  ///
  /// This method is extremely fast and independent of the
  /// number of objects in the collection.
  int count();

  /// Calculates the size of the collection in bytes.
  int getSize({bool includeIndexes = false});

  /// Import a list of json objects.
  ///
  /// The json objects must have the same structure as the objects in this
  /// collection. Otherwise an exception will be thrown.
  int importJson(List<Map<String, dynamic>> json) =>
      importJsonString(jsonEncode(json));

  /// Import a list of json objects.
  ///
  /// The json objects must have the same structure as the objects in this
  /// collection. Otherwise an exception will be thrown.
  int importJsonString(String json);

  /// Remove all data in this collection and reset the auto increment value.
  void clear();

  /// Watch the collection for changes.
  ///
  /// If [fireImmediately] is `true`, an event will be fired immediately.
  Stream<void> watchLazy({bool fireImmediately = false});

  /// Watch the object with [id] for changes. If a change occurs, the new object
  /// will be returned in the stream.
  ///
  /// Objects that don't exist (yet) can also be watched. If [fireImmediately]
  /// is `true`, the object will be sent to the consumer immediately.
  Stream<OBJ?> watchObject(ID id, {bool fireImmediately = false});

  /// Watch the object with [id] for changes.
  ///
  /// If [fireImmediately] is `true`, an event will be fired immediately.
  Stream<void> watchObjectLazy(ID id, {bool fireImmediately = false});

  /// Build a query dynamically for example to build a custom query language.
  ///
  /// It is highly discouraged to use this method. Only in very special cases
  /// should it be used. If you open an issue please always mention that you
  /// used this method.
  ///
  /// The type argument [R] needs to be equal to [OBJ] if no [properties] are
  /// specified. Otherwise it should be the type of the property.
  @experimental
  DatabaseUniverseQuery<R> buildQuery<R>({
    Filter? filter,
    List<SortProperty>? sortBy,
    List<DistinctProperty>? distinctBy,
    List<int>? properties,
  });
}

/// Asychronous extensions for [DatabaseUniverseCollection].
extension CollectionAsync<ID, OBJ> on DatabaseUniverseCollection<ID, OBJ> {
  /// {@macro collection_get}
  Future<OBJ?> getAsync(ID id) {
    return databaseUniverse.readAsync(
      (databaseUniverse) => databaseUniverse.collection<ID, OBJ>().get(id),
    );
  }

  /// {@macro collection_get_all}
  Future<List<OBJ?>> getAllAsync(List<ID> ids) {
    return databaseUniverse.readAsync(
      (databaseUniverse) => databaseUniverse.collection<ID, OBJ>().getAll(ids),
    );
  }
}
