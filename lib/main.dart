import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Color.fromARGB(255, 249, 245, 255), iconTheme: IconThemeData(color: Color.fromARGB(255, 51, 10, 111))),
      home: Home()
    );
  }
}
