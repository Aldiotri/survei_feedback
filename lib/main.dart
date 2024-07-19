import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:survei_feedback/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Aplikasi Survei Dan Feedback',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        appBarTheme: AppBarTheme(foregroundColor: Colors.white),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue),
              foregroundColor: MaterialStatePropertyAll(Colors.white)),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
