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
// ignore_for_file: use_build_context_synchronously

import 'package:example/core/flutter/client/client.dart';
import 'package:flutter/material.dart';
// import 'package:general/flutter/general_flutter_core.dart';
import 'package:general_lib_flutter/widget/widget.dart';
import 'package:general_system_device/flutter/flutter.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MainApp());
}

///
class MainApp extends StatelessWidget {
  ///
  const MainApp({super.key});

  ///
  static ExampleClientFlutter exampleClientFlutter = ExampleClientFlutter(
    navigatorKey: GlobalKey<NavigatorState>(),
    generalLibrary: GeneralSystemDeviceFlutter(),
  );

  @override
  Widget build(BuildContext context) {
    return GeneralLibFlutterAppMain(
      generalLibFlutterApp: ExampleClientFlutter.generalLibFlutterApp,
      builder: (themeMode, lightTheme, darkTheme, widget) {
        return MaterialApp(
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeMode,
          debugShowCheckedModeBanner: false,
          onUnknownRoute: exampleClientFlutter.routeGeneralLibFlutter.route,
        );
      },
    );
  }
}

///
class MainInitializedApp extends ExampleClientFlutterAppStatefulWidget {
  ///
  const MainInitializedApp({
    super.key,
    required super.generalFrameworkClientFlutter,
  });

  @override
  State<MainInitializedApp> createState() => _MainInitializedAppState();
}

class _MainInitializedAppState extends State<MainInitializedApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      task();
    });
  }

  void task() {
    Future(() async {
      await widget.generalFrameworkClientFlutter.ensureInitialized(
        context: context,
        onLoading: (text) {},
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
