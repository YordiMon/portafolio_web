import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portafolio_web/helpers/url_helper.dart';
import 'package:portafolio_web/widgets/CustomButton.dart';
import 'package:portafolio_web/widgets/NormalText.dart';
import 'package:portafolio_web/widgets/RichNormalText.dart';

class GlideProject extends StatelessWidget {
  const GlideProject({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double effectiveWidth = screenWidth > 450 ? 450 : screenWidth;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NormalText(
          text: '> Sushisimo',
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
                  'lib/assets/glide.png', 
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
                          icon: FontAwesomeIcons.glide,
                          text: 'Glide',
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
                          'Aplicación web progresiva desarrollada con Glide para pedir sushi a domicilio. La aplicación permite ver el menú dividido por categorías, almacenar productos en un carrito de compras, llenar un formulario con la información del pedido y mandarlo automaticamente al número de WhatsApp del restaurante. Proyecto no code.',
                      highlights: {
                        'Aplicación': Color.fromARGB(255, 255, 255, 160),
                        'web': Color.fromARGB(255, 255, 255, 160),
                        'progresiva': Color.fromARGB(255, 255, 255, 160),
                        'Glide': Color.fromARGB(255, 255, 255, 160),
                        'ver': Color.fromARGB(255, 255, 255, 160),
                        'carrito': Color.fromARGB(255, 255, 255, 160),
                        'formulario': Color.fromARGB(255, 255, 255, 160),
                        'WhatsApp': Color.fromARGB(255, 255, 255, 160),
                        'no': Color.fromARGB(255, 255, 255, 160),
                        'code': Color.fromARGB(255, 255, 255, 160),
                      },
                      fontSize: effectiveWidth * 0.027,
                      baseColor: Colors.white70,
                      spacing: 2.5,
                      alignment: TextAlign.left,
                    ),
                    const SizedBox(height: 10),

                    NormalText(
                      text: '> Opciones.',
                      fontSize: effectiveWidth * 0.027,
                      color: Colors.blueGrey,
                      aligment: TextAlign.start,
                    ),
                    const SizedBox(height: 10),
                    CustomButton(
                          icon: Icons.open_in_new_rounded,
                          text: ' Abrir web',
                          borderWidth: 0,
                          borderRadius: 3,
                          textColor: Colors.black,
                          backgroundColor: const Color.fromARGB(255, 208, 208, 208),
                          fontWeight: FontWeight.bold,
                          fontSize: effectiveWidth * 0.027,
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                          spacing: 4,
                          onTap: () => launchURL('https://sushisimo-sushi.glide.page'),
                        ),
                  ],
                );

  }
}