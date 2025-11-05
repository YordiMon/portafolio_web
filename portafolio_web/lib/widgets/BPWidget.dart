import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portafolio_web/helpers/url_helper.dart';
import 'package:portafolio_web/widgets/CustomButton.dart';
import 'package:portafolio_web/widgets/NormalText.dart';
import 'package:portafolio_web/widgets/RichNormalText.dart';

class BPWidget extends StatelessWidget {
  const BPWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double effectiveWidth = screenWidth > 450 ? 450 : screenWidth;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NormalText(
          text: '> Between Pages',
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
                  'lib/assets/bp.png', 
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
                          icon: FontAwesomeIcons.angular,
                          text: 'Angular',
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
                          'Aplicación web de venta de libros. Se utilizó Angular y se consumió una API. La aplicación contiene método de autenticación, consulta de libros, barra de búsqueda, comentarios, likes, reseñas y un mini sistema de seguimiento del pedido que has realizado.',
                      highlights: {
                        'web': Color.fromARGB(255, 255, 255, 160),
                        'API': Color.fromARGB(255, 255, 255, 160),
                        'contiene': Color.fromARGB(255, 255, 255, 160),
                        'seguimiento': Color.fromARGB(255, 255, 255, 160),
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
                          onTap: () => launchURL('https://github.com/YordiMon/angular-app'),
                        ),
                  ],
                );

  }
}