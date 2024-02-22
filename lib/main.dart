// main.dart
import 'package:flutter/material.dart';
import 'package:mywhatsapp/SplashView/splash_view.dart'; // Update with the correct package name and file path

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: const SplashView(),
    );
  }
}
