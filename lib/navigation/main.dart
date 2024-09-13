import 'package:al1_2024/navigation/destinations/screen_c.dart';
import 'package:al1_2024/navigation/navigation_home_screen.dart';
import 'package:flutter/material.dart';

import 'destinations/screen_b.dart';

void main() {
  runApp(const NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/screenB': (context) => const ScreenB(),
      },
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/screenC') {
          final arguments = settings.arguments;
          if (arguments is String) {
            return MaterialPageRoute(
              builder: (context) => ScreenC(id: arguments),
            );
          }
        }

        return MaterialPageRoute(
          builder: (context) => Container(color: Colors.red),
        );
      },
      home: const NavigationHomeScreen(),
    );
  }
}
