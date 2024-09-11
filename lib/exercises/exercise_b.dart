import 'package:flutter/material.dart';

class ExerciseB extends StatelessWidget {
  const ExerciseB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SquareButton(),
      ),
    );
  }
}

class SquareButton extends StatelessWidget {
  const SquareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.orange,
    );
  }
}

