import 'package:flutter/material.dart';
import 'package:kalkulator_antropometri/pages/splash_scene.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kalkulator Antroprometri',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFEEEEEE),
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Poppins',
        ),
      ),
      home: const SplashScene(),
    );
  }
}
