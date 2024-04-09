import 'package:flutter/material.dart';

class PrettyContainer extends StatelessWidget {
  final double width;
  final double height;
  const PrettyContainer({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: AlignmentDirectional.centerStart,
              end: AlignmentDirectional.centerEnd,
              colors: [Color(0XFF00FFD2), Color(0XFFFF00F4)]),
          borderRadius: BorderRadius.circular(12)),
      child: ElevatedButton(
        onPressed: () {
          print("Tapped!");
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent),
        child: const Text(
          textAlign: TextAlign.center,
          'Click me!',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
