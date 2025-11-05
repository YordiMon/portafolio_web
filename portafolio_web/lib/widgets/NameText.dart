import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Nametext extends StatelessWidget {
  const Nametext({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final double effectiveWidth = screenWidth > 450 ? 450 : screenWidth;

    return AnimatedTextKit(
      isRepeatingAnimation: false,
      animatedTexts: [
        TypewriterAnimatedText(
          text,
          textAlign: TextAlign.center,
          textStyle: TextStyle(
            color: Colors.lightBlueAccent,
            fontSize: effectiveWidth * 0.1,
            letterSpacing: 6,
            fontWeight: FontWeight.w900,
          ),
          speed: const Duration(milliseconds: 200),
          cursor: '',
        ),
      ],
    );
  }
}
