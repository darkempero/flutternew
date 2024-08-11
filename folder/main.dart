import 'package:flutter/material.dart';
import 'input.dart';
import 'create.dart';
import 'verification.dart';
import 'layout2.dart';
import 'layout.dart';
import 'splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App!!',
      theme: ThemeData(
        colorSchemeSeed: Colors.indigo,
        useMaterial3: true,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Colors.blue,
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      //initialRoute: '/input',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context)=>splash_screen(),
        '/input': (context)=>loading_screen(),
        '/create': (context)=>create_screen(),
        '/layout2': (context)=>lay2_screen(),
        '/verification': (context)=>code_screen(),
      },
    );
  }
}




