import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  const NormalText({
    super.key,
    required this.text,
    this.color = Colors.white70,
    this.fontSize = 24,
    this.aligment = TextAlign.center, 
    this.spacing = 3,
    this.fontWeight = FontWeight.w500,
  });

  final String text;
  final Color color;
  final double fontSize;
  final TextAlign aligment;
  final double spacing;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double effectiveWidth = screenWidth > 450 ? 450 : screenWidth;
    return Text(
      text,
      textAlign: aligment,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        letterSpacing: effectiveWidth * 0.007,
        fontWeight: fontWeight,
      ),
    );
  }
}
