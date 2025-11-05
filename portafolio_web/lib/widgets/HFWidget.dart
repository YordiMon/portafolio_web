import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portafolio_web/helpers/url_helper.dart';
import 'package:portafolio_web/widgets/CustomButton.dart';
import 'package:portafolio_web/widgets/NormalText.dart';
import 'package:portafolio_web/widgets/RichNormalText.dart';

class HBWidget extends StatelessWidget {
  const HBWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double effectiveWidth = screenWidth > 450 ? 450 : screenWidth;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NormalText(
          text: '> History Branch',
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
                  'lib/assets/hb.png',
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
                          'Aplicación móvil multiplataforma donde el usuario puede crear historias con ramas que lleven a diferentes finales. Se usó laravel para crear una API que maneje el backed de la app. Contiene autenticación, perfiles, creación y eliminación de historias, borradores, comentarios y likes, barras de búsqueda, filtros de búsuqeda, etc.',
                      highlights: {
                        'móvil': Color.fromARGB(255, 255, 255, 160),
                        'multiplataforma': Color.fromARGB(255, 255, 255, 160),
                        'diferentes': Color.fromARGB(255, 255, 255, 160),
                        'API': Color.fromARGB(255, 255, 255, 160),
                        'Contiene': Color.fromARGB(255, 255, 255, 160),
                        'etc': Color.fromARGB(255, 255, 255, 160),
                      },
                      fontSize: effectiveWidth * 0.027,
                      baseColor: Colors.white70,
                      spacing: 2.5,
                      alignment: TextAlign.left,
                    ),
                    const SizedBox(height: 15),

                    NormalText(
                      text: '> Opciones.',
                      fontSize: effectiveWidth * 0.027,
                      color: Colors.blueGrey,
                      aligment: TextAlign.start,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      spacing: 10,
                      children: [
                        CustomButton(
                              icon: FontAwesomeIcons.github,
                              text: ' Ver código',
                              borderWidth: 0,
                              borderRadius: 3,
                              textColor: Colors.black,
                              backgroundColor: const Color.fromARGB(255, 208, 208, 208),
                              fontWeight: FontWeight.bold,
                              fontSize: effectiveWidth * 0.027,
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                              spacing: 4,
                              onTap: () => launchURL('https://github.com/YordiMon/flutter-app#'),
                            ),
                            CustomButton(
                              icon: FontAwesomeIcons.github,
                              text: ' Ver API',
                              borderWidth: 0,
                              borderRadius: 3,
                              textColor: Colors.black,
                              backgroundColor: const Color.fromARGB(255, 208, 208, 208),
                              fontWeight: FontWeight.bold,
                              fontSize: effectiveWidth * 0.027,
                              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                              spacing: 4,
                              onTap: () => launchURL('https://github.com/YordiMon/API_Historias'),
                            ),
                      ],
                    ),
                  ],
                );

  }
}