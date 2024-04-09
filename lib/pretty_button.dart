import 'package:flutter/material.dart';

class PrettyButton extends StatelessWidget {
  const PrettyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print('Tapped!');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0XFF00ADB2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      child: const Text(
        textAlign: TextAlign.left,
        'Click me!',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
