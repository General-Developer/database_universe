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
part of "package:database_universe/core/core.dart";

/// Annotate properties to build an index.
const index = Index();

/// Annotate properties to build an index.
@Target({TargetKind.field, TargetKind.getter})
class Index {
  /// Annotate properties to build an index.
  const Index({
    this.name,
    this.composite = const [],
    this.unique = false,
    this.hash = false,
  });

  /// Name of the index. By default, the names of the properties are
  /// concatenated using "_"
  final String? name;

  /// Specify up to two other properties to build a composite index.
  final List<String> composite;

  /// A unique index ensures the index does not contain any duplicate values.
  /// If you attempt to insert an object that conflicts with an existing
  /// object that has the same value for the indexed property, the existing
  /// object will be overwritten.
  final bool unique;

  /// Stores the hash of the value(s) in the index. This saves space and
  /// increases performance, but only equality queries are supported. You
  /// should always use this if you only want to guarantee uniqueness.
  ///
  /// SQLite does not support hash indexes so a value index will be used
  /// instead.
  final bool hash;
}
