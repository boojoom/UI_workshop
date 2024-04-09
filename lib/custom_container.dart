import 'dart:ui';

import 'package:flutter/material.dart';

class GlassContainer extends StatelessWidget {
  final Widget extraWidget;
  const GlassContainer({super.key, required this.extraWidget});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        // blur
        width: 300,
        height: 400,
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 20,
                sigmaY: 20,
              ),
              child: Container(),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0x33F1FCFF), Color(0x1AF1FCFF)]
                  ),
                  border: Border.all(color: const Color(0x33F1FCFF)),
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
            extraWidget
          ],
        ),
      ),
    );
  }
}
