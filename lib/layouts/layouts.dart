import 'package:flutter/material.dart';

class Layouts extends StatelessWidget {
  const Layouts({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final maxHeight = constraints.maxHeight;
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      color: Colors.orange,
                    ),
                  ),
                  Container(
                    height: 30,
                    width: double.infinity,
                    color: Colors.blue,
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
