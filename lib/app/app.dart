import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thrive_mint/app/splashscreen.dart';
import 'package:thrive_mint/core/routes/routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        brightness: Brightness.light,
      ),
      getPages: Nav.routes,
      home: const Splashscreen(),
    );
  }
}
