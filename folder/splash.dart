import 'package:flutter/material.dart';
import 'dart:async';

class splash_screen extends StatefulWidget {
  const splash_screen({super.key});

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  @override
  void initState() {
    super.initState();
    // Set a timer to navigate after 2 seconds
    Timer(const Duration(seconds: 2), () {
      // Use pushReplacementNamed to avoid going back to the splash screen
      Navigator.pushReplacementNamed(context, '/input'); // Replace '/loginpage' with your actual next screen route
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('lib/assets/load1.jpeg')),
    );
  }
}