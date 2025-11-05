import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portafolio_web/helpers/url_helper.dart';
import 'package:portafolio_web/widgets/CustomButton.dart';
import 'package:portafolio_web/widgets/NormalText.dart';
import 'package:portafolio_web/widgets/RichNormalText.dart';

class InDevelopProject extends StatelessWidget {
  const InDevelopProject({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double effectiveWidth = screenWidth > 450 ? 450 : screenWidth;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NormalText(
          text: 'Proyectos en desarrollo.',
          color: Colors.lightBlueAccent,
          fontSize: 30,
        ),
        const SizedBox(height: 25),
        NormalText(
          text: '> Proyecto financiero',
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
                  'lib/assets/pf.png', 
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
                          icon: FontAwesomeIcons.database,
                          text: 'Firebase',
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
                          'Aplicación móvil con autenticación en Firebase usando la base de datos de Firestore para almacenar información. Permite tener gestión de los ingresos y egresos del usuario de forma sencilla e intuitiva, con gráficas para visualizar los movimientos financieros.',
                      highlights: {
                        'móvil': Color.fromARGB(255, 255, 255, 160),
                        'Firebase': Color.fromARGB(255, 255, 255, 160),
                        'Firestore': Color.fromARGB(255, 255, 255, 160),
                        'ingresos': Color.fromARGB(255, 255, 255, 160),
                        'egresos': Color.fromARGB(255, 255, 255, 160),
                        'gráficas': Color.fromARGB(255, 255, 255, 160),
                      },
                      fontSize: effectiveWidth * 0.027,
                      baseColor: Colors.white70,
                      spacing: 2.5,
                      alignment: TextAlign.left,
                    ),
                    const SizedBox(height: 25),
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
                          onTap: () => launchURL('https://github.com/YordiMon/proyectofinanciero'),
                        ),
                    
                  ],
                );
  }
  }