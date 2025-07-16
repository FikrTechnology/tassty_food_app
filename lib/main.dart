import 'package:flutter/material.dart';
import 'package:tassty_food_app/utilities/themes/themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              Text(
                'Selamat Datang!',
                style: AppTypography.textTheme.headlineLarge,
              ),
              Text(
                'Ini adalah teks body.',
                style: AppTypography.textTheme.bodyLarge,
              )
            ],
          ),
        ),
      ),
    );
  }
}
