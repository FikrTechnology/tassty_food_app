import 'package:flutter/material.dart';
import 'package:tassty_food_app/presentation/views/pages.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingSplashscreenPage(),
    );
  }
}
