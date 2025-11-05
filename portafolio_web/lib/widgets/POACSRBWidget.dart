import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portafolio_web/widgets/CustomButton.dart';
import 'package:portafolio_web/widgets/NormalText.dart';
import 'package:portafolio_web/widgets/RichNormalText.dart';

class POACSRBWidget extends StatelessWidget {
  const POACSRBWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double effectiveWidth = screenWidth > 450 ? 450 : screenWidth;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NormalText(
          text: '> Reportador y consultador',
          fontSize: 14,
          color: Color.fromARGB(255, 255, 255, 160),
          aligment: TextAlign.start,
          spacing: 5,
        ),
        const SizedBox(height: 10),
              ClipRRect(
                borderRadius: const BorderRadius.all(
                  Radius.circular(6),
                ),
                child: Image.asset(
                  'lib/assets/poacsrb.png', 
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 175,
                ),
              ),
              const SizedBox(height: 15),
                    Row(
                      spacing: 10,
                      children: [
                        CustomButton(
                          icon: FontAwesomeIcons.flutter,
                          text: 'Flutter',
                          borderWidth: 1,
                          textColor: Colors.blueGrey,
                          borderColor: Colors.blueGrey,
                          fontWeight: FontWeight.w400,
                          fontSize: effectiveWidth * 0.027,
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                        ),
                        CustomButton(
                          icon: FontAwesomeIcons.laravel,
                          text: 'Laravel',
                          borderWidth: 1,
                          textColor: Colors.blueGrey,
                          borderColor: Colors.blueGrey,
                          fontWeight: FontWeight.w400,
                          fontSize: effectiveWidth * 0.027,
                          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    RichNormalText(
                      text:
                          'Reportador y consultador del CSRB, aplicación de escritorio para la creación y gestión de informes en formato PDF, donde la información se guarda en base de datos utilizando una API creada en laravel. Con la capacidad de obtener datos similares de distintos informes para elaborar consultas avanzadas. Incluye también la gestión de usuarios con administrador.',
                      highlights: {
                        'CSRB': Color.fromARGB(255, 255, 255, 160),
                        'API': Color.fromARGB(255, 255, 255, 160),
                        'consultas': Color.fromARGB(255, 255, 255, 160),
                        'avanzadas': Color.fromARGB(255, 255, 255, 160),
                        'escritorio': Color.fromARGB(255, 255, 255, 160),
                        'gestión': Color.fromARGB(255, 255, 255, 160),
                      },
                      fontSize: effectiveWidth * 0.027,
                      baseColor: Colors.white70,
                      spacing: 2.5,
                      alignment: TextAlign.left,
                    ),
                    const SizedBox(height: 15),

                    NormalText(
                      text: '> No se comparte código ni imágenes de este proyecto por ser confidencial.',
                      fontSize: effectiveWidth * 0.027,
                      color: Colors.blueGrey,
                      aligment: TextAlign.start,
                    ),
                  ],
                );

  }
}