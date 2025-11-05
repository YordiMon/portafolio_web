import 'package:flutter/material.dart';

class RichNormalText extends StatelessWidget {
  final String text;
  final Map<String, Color> highlights; 
  final double fontSize;
  final TextAlign alignment;
  final double spacing;
  final FontWeight fontWeight;
  final Color baseColor;

  const RichNormalText({
    super.key,
    required this.text,
    required this.highlights,
    this.baseColor = Colors.white70,
    this.fontSize = 24,
    this.alignment = TextAlign.center,
    this.spacing = 3,
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    final words = text.split(' ');
    final double screenWidth = MediaQuery.of(context).size.width;
    final double effectiveWidth = screenWidth > 450 ? 450 : screenWidth;

    return RichText(
      textAlign: alignment,
      text: TextSpan(
        children: words.map((word) {

          final regex = RegExp(r'([a-zA-ZáéíóúÁÉÍÓÚñÑ]+)([\.\,\!\?\;\:]*)');
          final match = regex.firstMatch(word);

          if (match == null) {
            return _buildSpan(word, baseColor, effectiveWidth); 
          }

          final cleanWord = match.group(1)!; 
          final punctuation = match.group(2)!; 
          final color = highlights[cleanWord] ?? baseColor;

          return TextSpan(
            children: [
              _buildSpan(cleanWord, color, effectiveWidth),
              if (punctuation.isNotEmpty) _buildSpan(punctuation, baseColor, effectiveWidth),
              const TextSpan(text: ' '),
            ],
          );
        }).toList(),
      ),
    );
  }

  TextSpan _buildSpan(String text, Color color, effectiveWidth) {
    return TextSpan(
      text: text,

      style: TextStyle(
        color: color,
        fontSize: fontSize,
        letterSpacing: effectiveWidth * 0.007,
        fontWeight: fontWeight,
      ),
    );
  }
}
