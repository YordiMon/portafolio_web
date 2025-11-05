import 'package:flutter/material.dart';
import 'package:portafolio_web/widgets/NormalText.dart';
import 'package:portafolio_web/widgets/RichNormalText.dart';

class HobbiesWidget extends StatelessWidget {
  const HobbiesWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double effectiveWidth = screenWidth > 450 ? 450 : screenWidth;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NormalText(
                  text: 'Hobbies.',
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                ),

                const SizedBox(height: 15),

                NormalText(
                        text: 'Hobbies e intereses personales',
                        fontSize: effectiveWidth * 0.027,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w400,
                        aligment: TextAlign.center,
                      ),

                const SizedBox(height: 5),
      
                    RichNormalText(
                    text:
                        'Aparte de la programación, me gusta ir al gimnasio, salir a correr o caminar por las noches, escucho música casi durante todo el día y en mis tiempos libres me gusta jugar videojuegos de diferentes géneros como shooters, aventura y estrategia.',
                    highlights: {
                      'programación': const Color.fromARGB(255, 255, 255, 160),
                      'gimnasio': const Color.fromARGB(255, 255, 255, 160),
                      'correr': const Color.fromARGB(255, 255, 255, 160),
                      'caminar': const Color.fromARGB(255, 255, 255, 160),
                      'música': const Color.fromARGB(255, 255, 255, 160),
                      'videojuegos': const Color.fromARGB(255, 255, 255, 160),
                    },
                    fontSize: effectiveWidth * 0.027,
                    baseColor: Colors.white70,
                    spacing: 2.5,
                    alignment: TextAlign.left,
                  ),
                  const SizedBox(height: 20),
                  NormalText(
                        text: '> Cosas que no me gustan.',
                        fontSize: effectiveWidth * 0.027,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w400,
                        aligment: TextAlign.left,
                      ),
                  const SizedBox(height: 5),
                  NormalText(
                        text: 'No me gustan las mentiras, la injusticia y la falta de respeto hacia los demás.',
                        fontSize: effectiveWidth * 0.027,
                        color: Colors.white70,
                        spacing: 2.5,
                        fontWeight: FontWeight.w500,
                        aligment: TextAlign.left,
                      ),
                  ],);

  }
}