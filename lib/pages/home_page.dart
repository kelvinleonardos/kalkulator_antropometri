import 'package:flutter/material.dart';
import '../utils/time_utils.dart';
import 'antropometry_input_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(24, 64, 24, 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(TimeUtils().getCurrentDayPart() == 0 ? 'Selamat Pagi' :
                       TimeUtils().getCurrentDayPart() == 1 ? 'Selamat Siang' :
                       TimeUtils().getCurrentDayPart() == 2 ? 'Selamat Sore' : 'Selamat Malam',
                    style: TextStyle(
                      fontSize: 16
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "Pilih Kalkulator",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              )
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(24, 24, 24, 24),
              child:
              Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(100)), // Samakan dengan borderRadius tombol
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Warna shadow
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: const Offset(3, 3), // Posisi shadow (x, y)
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(100)), // Clip agar shadow mengikuti borderRadius
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.fromLTRB(16, 24, 16, 24),
                      minimumSize: const Size(double.infinity, 50),
                      backgroundColor: const Color(0xFFEEEEEE), // Warna ungu
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AntropometryInputPage(),
                        )
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Kalkulator\n Antropometri",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(width: 14),
                        Image.asset(
                          'assets/images/choose_calc.png',
                          width: 110,
                        )
                      ],
                    )
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  'Riwayat Pemeriksaan',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
