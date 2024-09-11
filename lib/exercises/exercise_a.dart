import 'package:flutter/material.dart';

class ExerciseA extends StatelessWidget {
  const ExerciseA({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SquareButton(),
      ),
    );
  }
}

class SquareButton extends StatefulWidget {
  const SquareButton({super.key});

  @override
  State<SquareButton> createState() => _SquareButtonState();
}

class _SquareButtonState extends State<SquareButton> {
  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: _selected ? 200 : 100,
        width: 100,
        decoration: BoxDecoration(
            color: _selected ? Colors.blue : Colors.orange,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(_selected ? 0 : 20),
              bottomRight: const Radius.circular(20),
            )),
        child: Center(
          child: AnimatedOpacity(
            duration: const Duration(milliseconds: 500),
            opacity: _selected ? 1 : 0,
            child: Text(
              _selected ? 'Coucou' : 'pas coucou',
            ),
          ),
        ),
      ),
    );
  }

  void _onTap() {
    setState(() {
      _selected = !_selected;
    });
  }
}
