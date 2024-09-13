import 'package:al1_2024/webservices/webservices_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: const TextTheme(
          displayMedium: TextStyle(
            fontSize: 30,
            color: Colors.green,
          ),
        ),
      ),
      home: const WebservicesScreen(),
    );
  }
}
