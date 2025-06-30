import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashScene extends StatefulWidget {
  const SplashScene({super.key});

  @override
  State<SplashScene> createState() => _SplashSceneState();
}

class _SplashSceneState extends State<SplashScene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Image.asset(
              'assets/images/splash_logo.png',
              width: 300,
              height: 300,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Selamat Datang',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              'Aplikasi ini akan membantu anda untuk melakukan Perhitungan Status Gizi menggunakan Standar Antropometri',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
              )
            )
          ),
          SizedBox(height: 120),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(100)), // Samakan dengan borderRadius tombol
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3), // Warna shadow
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // Posisi shadow (x, y)
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(100)), // Clip agar shadow mengikuti borderRadius
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: const Color(0xFFC62FF8), // Warna ungu
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement((context), MaterialPageRoute(
                      builder: (context) => const HomePage(), // Ganti dengan halaman yang sesuai
                    ));
                  },
                  child: const Text(
                    'Mulai',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
