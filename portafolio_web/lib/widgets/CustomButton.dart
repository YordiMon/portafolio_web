import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.icon,
    this.onTap,
    this.backgroundColor = Colors.transparent,
    this.borderColor = Colors.white60,
    this.borderWidth = 1,
    this.borderRadius = 6,
    this.textColor = Colors.white70,
    this.padding = const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
    this.fontWeight = FontWeight.w300,
    this.fontSize = 12,
    this.spacing = 1,
  });

  final String text;
  final IconData? icon;
  final VoidCallback? onTap;

  final Color backgroundColor;
  final Color borderColor;
  final double borderWidth;
  final double borderRadius;
  final Color textColor;
  final EdgeInsets padding;
  final FontWeight fontWeight;
  final double fontSize;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: borderColor,
            width: borderWidth,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon, color: textColor, size: 12,),
              const SizedBox(width: 8),
            ],
            Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                color: textColor,
                fontWeight: fontWeight,
                letterSpacing: spacing,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
