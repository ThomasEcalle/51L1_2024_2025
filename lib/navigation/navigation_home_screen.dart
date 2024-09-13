import 'package:al1_2024/navigation/destinations/screen_a.dart';
import 'package:al1_2024/navigation/destinations/screen_c.dart';
import 'package:flutter/material.dart';

class NavigationHomeScreen extends StatelessWidget {
  const NavigationHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _navigateToScreenA(context),
              child: const Text('Go to screen A'),
            ),
            ElevatedButton(
              onPressed: () => _navigateToScreenB(context),
              child: const Text('Go to screen B'),
            ),
            ElevatedButton(
              onPressed: () => _navigateToScreenC(context),
              child: const Text('Go to screen C'),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToScreenA(BuildContext context) async {
    final result = await Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const ScreenA(),
    ));

    print(result);
  }

  void _navigateToScreenB(BuildContext context) {
    Navigator.of(context).pushNamed('/screenB');
  }

  void _navigateToScreenC(BuildContext context) {
    ScreenC.navigateTo(context, 'Salut');
  }
}
