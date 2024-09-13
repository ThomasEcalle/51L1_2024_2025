import 'package:al1_2024/navigation/navigation_home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationHomeScreen(),
    );
  }
}
