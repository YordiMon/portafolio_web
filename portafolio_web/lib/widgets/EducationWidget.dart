import 'package:flutter/material.dart';
import 'package:portafolio_web/widgets/NormalText.dart';
import 'package:portafolio_web/widgets/RichNormalText.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({super.key});

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double effectiveWidth = screenWidth > 450 ? 450 : screenWidth;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NormalText(
                  text: 'Educación.',
                  color: Colors.lightBlueAccent,
                  fontSize: 30,
                ),

                const SizedBox(height: 15),

                NormalText(
                        text: 'Universidad Tecnológica de Hermosillo',
                        fontSize: effectiveWidth * 0.027,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w400,
                        aligment: TextAlign.center,
                      ),

                const SizedBox(height: 5),
      
                    RichNormalText(
                    text:
                        'Soy estudiante de Ingeniería en Desarrollo y Gestión de Software Multiplataforma, graduado como Técnico Superior Universitario y actualmente cursando la ingeniería. Aparte de realizar prácticas profesionales por 4 meses.',
                    highlights: {
                      'Software': const Color.fromARGB(255, 255, 255, 160),
                      'Multiplataforma': const Color.fromARGB(255, 255, 255, 160),
                      'estudiante': const Color.fromARGB(255, 255, 255, 160),
                      'ingeniería': const Color.fromARGB(255, 255, 255, 160),
                      'prácticas': const Color.fromARGB(255, 255, 255, 160),
                      'profesionales': const Color.fromARGB(255, 255, 255, 160),
                    },
                    fontSize: effectiveWidth * 0.027,
                    baseColor: Colors.white70,
                    spacing: 2.5,
                    alignment: TextAlign.left,
                  ),
                  const SizedBox(height: 20),
                  NormalText(
                        text: '> Promedio.',
                        fontSize: effectiveWidth * 0.027,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w400,
                        aligment: TextAlign.left,
                      ),
                  const SizedBox(height: 5),
                  NormalText(
                        text: 'He cursado 10 cuatrimestres con un promedio general de 93/100 con becas academicas por mi desempeño.',
                        fontSize: effectiveWidth * 0.027,
                        color: Colors.white70,
                        spacing: 2.5,
                        fontWeight: FontWeight.w500,
                        aligment: TextAlign.left,
                      ),
                  ],);

  }
}