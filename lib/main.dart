

import 'package:bookly_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const FlutterBooklyApp());
}

class FlutterBooklyApp extends StatelessWidget {
  const FlutterBooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // we use it for navigator from screen to other screen //
    return const GetMaterialApp(
      home: SplashView(),
    );
  }
}