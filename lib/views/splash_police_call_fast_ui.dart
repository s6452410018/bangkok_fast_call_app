// ignore_for_file: prefer_const_constructors

import 'package:bangkok_fast_call/views/home_police_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPoliceCallFastUI extends StatefulWidget {
  const SplashPoliceCallFastUI({super.key});

  @override
  State<SplashPoliceCallFastUI> createState() => _SplashPoliceCallFastUIState();
}

class _SplashPoliceCallFastUIState extends State<SplashPoliceCallFastUI> {
  @override
  void initState() {
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePoliceUI(),
        ),
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.width * 0.5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/police.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.05,
            ),
            Text(
              'สายด่วน สถานีตำรวจในสังกัดกทม.',
              style: GoogleFonts.kanit(
                fontSize: MediaQuery.of(context).size.width * 0.05,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
