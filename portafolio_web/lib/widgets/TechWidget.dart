import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class Techwidget extends StatelessWidget {
  final List<IconData> icons;
  final List<Color> iconColors;
  final List<String> texts;

  const Techwidget({
    super.key,
    required this.icons,
    required this.iconColors,
    required this.texts,
  });

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double effectiveWidth = screenWidth > 450 ? 450 : screenWidth;

    return ShakeY(
      from: 3,
      duration: Duration(seconds: 10),
      infinite: true,
      child: ShakeX(
        from: 2,
        duration: Duration(seconds: 7),
        infinite: true,
        child: Center(
          child: Row(
            spacing: effectiveWidth * 0.067,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeInLeft(
                child: Row(
                  spacing: effectiveWidth * 0.067,
                  children: [
                    _buildTechItem(icons[0], iconColors[0], texts[0], effectiveWidth),
                    _buildTechItem(icons[1], iconColors[1], texts[1], effectiveWidth),
                  ],
                ),
              ),
              FadeInRight(
                child: Row(
                  spacing: effectiveWidth * 0.067,
                  children: [
                    _buildTechItem(icons[2], iconColors[2], texts[2], effectiveWidth),
                    _buildTechItem(icons[3], iconColors[3], texts[3], effectiveWidth),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  

  Widget _buildTechItem(IconData icon, Color color, String text, effectiveWidth) {

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: effectiveWidth * 0.0425, color: color),
        const SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
            fontSize: effectiveWidth * 0.0225,
            letterSpacing: effectiveWidth * 0.01,
          ),
        ),
      ],
    );
  }
}
