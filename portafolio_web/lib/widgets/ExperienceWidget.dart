import 'package:flutter/material.dart';
import 'package:portafolio_web/widgets/NormalText.dart';
import 'package:portafolio_web/widgets/RichNormalText.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double effectiveWidth = screenWidth > 450 ? 450 : screenWidth;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NormalText(
                  text: 'Experiencia.',
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                ),

                const SizedBox(height: 15),

                NormalText(
                        text: 'CSRB > Mayo - Agosto (2024)',
                        fontSize: effectiveWidth * 0.027,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w400,
                        aligment: TextAlign.center,
                      ),

                const SizedBox(height: 5),

      
                    RichNormalText(
                    text:
                        'Prácticas profesionales como desarrollador Full Stack con Flutter, Laravel y SqlServer. Donde se facilitó la creación de reportes y consultas mediante una apliación de escritorio.',
                    highlights: {
                      'Full': const Color.fromARGB(255, 255, 255, 160),
                      'Stack': const Color.fromARGB(255, 255, 255, 160),
                      'Flutter': const Color.fromARGB(255, 255, 255, 160),
                      'Laravel': const Color.fromARGB(255, 255, 255, 160),
                      'SqlServer': const Color.fromARGB(255, 255, 255, 160),
                      'escritorio': const Color.fromARGB(255, 255, 255, 160),
                    },
                    fontSize: effectiveWidth * 0.027,
                    baseColor: Colors.white70,
                    spacing: 2.5,
                    alignment: TextAlign.left,
                  ),
                  const SizedBox(height: 20),
                  NormalText(
                        text: '> Habilidades empleadas.',
                        fontSize: effectiveWidth * 0.027,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w400,
                        aligment: TextAlign.left,
                      ),
                  const SizedBox(height: 5),
                  NormalText(
                        text: 'Requisitos del sistema, análisis del sistema, análisis de base de datos, diseño UI/UX, trabajo en equipo, desarrollo front-end y back-end, pruebas de software y hosteo de una API en la web.',
                        fontSize: effectiveWidth * 0.027,
                        color: Colors.white70,
                        spacing: 2.5,
                        fontWeight: FontWeight.w500,
                        aligment: TextAlign.left,
                      ),
                  ],);

  }
}