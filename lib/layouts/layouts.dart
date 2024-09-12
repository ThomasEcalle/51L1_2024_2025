import 'package:al1_2024/layouts/red_circle.dart';
import 'package:flutter/material.dart';

class Layouts extends StatelessWidget {
  const Layouts({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final small = screenWidth < 600;

    final redCircles = List.generate(25, (index) {
      return RedCircle(index: index);
    });

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          final maxHeight = constraints.maxHeight;
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: small ? Colors.green : Colors.orange,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.pink,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            color: Colors.orange,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              child: Wrap(
                                direction: Axis.horizontal,
                                spacing: 5,
                                runSpacing: 5,
                                children: redCircles,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.pink,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.yellow,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
