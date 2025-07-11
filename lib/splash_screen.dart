import 'package:flutter/material.dart';
import 'dart:async';
// import 'home_page.dart';
// import 'backup_screen.dart';
// import 'profile_page.dart';
import 'block_screen.dart';
// import 'setting_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to Home Page after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) =>  BlockingScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/splash.png', // 👈 Your logo path
          width: 150,         // Optional: set size
          height: 150,
        ),
      ),
    );
  }
}
