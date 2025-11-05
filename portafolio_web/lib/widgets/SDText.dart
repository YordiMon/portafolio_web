import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SDText extends StatelessWidget {
  const SDText({super.key, required this.textOne, required this.textTwo, required this.textThree});

  final String textOne;
  final String textTwo;
  final String textThree;

  @override
  Widget build(BuildContext context) {

    const colorizeColors = [
      Colors.blueGrey,
      Colors.blueGrey,
      Colors.white,
      Colors.blueGrey,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 14.0,
      letterSpacing: 3,
      fontWeight: FontWeight.w500,
      
    );

    return AnimatedTextKit(
              isRepeatingAnimation: true,
              repeatForever: true,
              animatedTexts: [
                ColorizeAnimatedText(
                  textOne,
                  textAlign:TextAlign.center,
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                  speed: Duration(milliseconds: 100)
                ),
                ColorizeAnimatedText(
                  textTwo,
                  textStyle: colorizeTextStyle,
                  textAlign:TextAlign.center,
                  colors: colorizeColors,
                  speed: Duration(milliseconds: 100)
                ),
                ColorizeAnimatedText(
                  textThree,
                  textStyle: colorizeTextStyle,
                  textAlign:TextAlign.center,
                  colors: colorizeColors,
                  speed: Duration(milliseconds: 100)
                ),
              ],
            );
  }
}