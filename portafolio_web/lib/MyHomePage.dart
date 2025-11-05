import 'dart:ui';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portafolio_web/widgets/About.dart';
import 'package:portafolio_web/widgets/CustomAppBar.dart';
import 'package:portafolio_web/widgets/CustomButton.dart';
import 'package:portafolio_web/widgets/InDevelopProjectWidget.dart';
import 'package:portafolio_web/widgets/NameText.dart';
import 'package:portafolio_web/widgets/NormalText.dart';
import 'package:portafolio_web/widgets/ProjectsWidget.dart';
import 'package:portafolio_web/widgets/RichNormalText.dart';
import 'package:portafolio_web/widgets/SDText.dart';
import 'package:portafolio_web/widgets/TechWidget.dart';
import 'package:portafolio_web/helpers/url_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final ScrollController _scrollController = ScrollController();
  
  double _inicioPosition = 0;
  double _sobreMiPosition = 0;
  double _proyectosPosition = 0;
  double _tecnologiasPosition = 0;

  @override
  void initState() {
    super.initState();
    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _calcularPosiciones();
    });
  }

  void _calcularPosiciones() {
    final screenHeight = MediaQuery.of(context).size.height;
    
    setState(() {
      _inicioPosition = 0;
      _sobreMiPosition = screenHeight * 0.8; 
      _proyectosPosition = screenHeight * 1.85; 
      _tecnologiasPosition = screenHeight * 3.65; 
    });
  }

  void _scrollToPosition(double position) {
    _scrollController.animateTo(
      position,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    
    final double horizontalPadding = screenWidth > 1200 
        ? (screenWidth - 450) / 2  
        : 20; 
    
    final double effectiveWidth = screenWidth > 450 ? 450 : screenWidth;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color.fromARGB(255, 16, 22, 27),
              Color.fromARGB(255, 16, 22, 27),
            ],
          ),
        ),
        child: Stack(
          children: [
            ListView(
              controller: _scrollController,
              cacheExtent: 1,
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: horizontalPadding), 
              children: [
                
                const SizedBox(height: 125), 
                FadeInDown(
                  child: Column(
                    children: [
                      CustomButton(
                        text: 'Visualizar CV',
                        icon: Icons.article_rounded,
                        borderColor: Colors.blueGrey,
                        onTap: () {
                          launchUrl(
                            Uri.parse('lib/assets/CV_Yordi_Monreal.pdf'),
                            webOnlyWindowName: '_blank',
                          );
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 75),
                NormalText(text: 'Hola, mi nombre es', fontSize: 20),
                Nametext(text: 'Yordi Monreal'),
                const SizedBox(height: 5),
                SDText(
                  textOne: 'Desarrollador Web',
                  textTwo: 'Desarrollador Móvil',
                  textThree: 'Desarrollador de Escritorio',
                ),
                const SizedBox(height: 75),
                FadeInUp(
                  child: Column(
                    children: [
                      NormalText(
                        text: '> Enfoque y capacidades.',
                        fontSize: 12,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.w400,
                        aligment: TextAlign.center,
                      ),
                      const SizedBox(height: 5),
                      RichNormalText(
                        text:
                            'Con capacidades Full Stack y adaptable a distintas tecnologías. Actualmente enfocado en Flutter y Dart.',
                        highlights: {
                          'Full': const Color.fromARGB(255, 255, 255, 160),
                          'Stack': const Color.fromARGB(255, 255, 255, 160),
                          'Flutter': const Color.fromARGB(255, 255, 255, 160),
                          'Dart': const Color.fromARGB(255, 255, 255, 160),
                        },
                        fontSize: effectiveWidth * 0.027,
                        baseColor: Colors.white60,
                      ),
                      const SizedBox(height: 75),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 40,
                        children: [
                          CustomButton(
                            text: 'Correo',
                            icon: Icons.email_rounded,
                            onTap: () {
                              launchURL('mailto:yordiazaelmzmz@gmail.com');
                            },
                            borderColor: Colors.blueGrey,
                            textColor: Colors.white70,
                          ),
                          CustomButton(
                            text: 'GitHub',
                            icon: FontAwesomeIcons.github,
                            onTap: () {
                              launchURL('https://github.com/YordiMon');
                            },
                            borderColor: Colors.blueGrey,
                            textColor: Colors.white70,
                          ),
                          CustomButton(
                            text: 'LinkedIn',
                            icon: FontAwesomeIcons.linkedin,
                            onTap: () {
                              launchURL('https://www.linkedin.com/in/yordi-azael-a603552a0/');
                            },
                            borderColor: Colors.blueGrey,
                            textColor: Colors.white70,
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      ShakeY(
                        infinite: true,
                        from: 5,
                        duration: const Duration(seconds: 2),
                        curve: Curves.linear,
                        child: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.blueGrey,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 150),
                
                FadeInUp(
                  child: Column(
                    children: [
                      AboutSection(),
                      const SizedBox(height: 125),
                      ShakeY(
                        infinite: true,
                        from: 5,
                        duration: const Duration(seconds: 2),
                        curve: Curves.linear,
                        child: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.blueGrey,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                
                const SizedBox(height: 125),
                FadeInUp(
                  child: ProjectsWidget(),
                ),
                const SizedBox(height: 50),
                FadeInUp(
                  child: Column(
                    children: [
                      InDevelopProject(),
                      const SizedBox(height: 75),
                      ShakeY(
                        infinite: true,
                        from: 5,
                        duration: const Duration(seconds: 2),
                        curve: Curves.linear,
                        child: const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: Colors.blueGrey,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 125),
                FadeInUp(
                  child: Column(
                    children: [
                      NormalText(
                        text: '< Tecnologías />',
                        fontSize: 16,
                        aligment: TextAlign.center,
                      ),
                      NormalText(
                        text: 'Herramientas y lenguajes.',
                        color: Colors.lightBlueAccent,
                        fontSize: 30,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Techwidget(
                  icons: [
                    FontAwesomeIcons.flutter,
                    FontAwesomeIcons.laravel,
                    FontAwesomeIcons.database,
                    FontAwesomeIcons.github,
                  ],
                  iconColors: [
                    Colors.blue,
                    Colors.red,
                    Colors.blueGrey,
                    Colors.white,
                  ],
                  texts: [
                    'Flutter',
                    'Laravel',
                    'Firebase',
                    'GitHub',
                  ],
                ),
                const SizedBox(height: 30,),
                Techwidget(
                  icons: [
                    FontAwesomeIcons.angular,
                    FontAwesomeIcons.android,
                    FontAwesomeIcons.unity,
                    FontAwesomeIcons.glide,
                  ],
                  iconColors: [
                    Colors.red,
                    Colors.green,
                    Colors.white,
                    Colors.blueGrey,
                  ],
                  texts: [
                    'Angular',
                    'Android Studio',
                    'Unity',
                    'Glide',
                  ],
                ),

                const SizedBox(height: 30,),
                Techwidget(
                  icons: [
                    FontAwesomeIcons.python,
                    FontAwesomeIcons.link,
                    FontAwesomeIcons.solidFolderOpen,
                    FontAwesomeIcons.dartLang,
                  ],
                  iconColors: [
                    Colors.blueGrey,
                    Colors.orange,
                    Colors.purple,
                    Colors.blue,
                  ],
                  texts: [
                    'Python',
                    'Postman',
                    'Kotlin',
                    'Dart',
                  ],
                ),

                const SizedBox(height: 30,),
                Techwidget(
                  icons: [
                    FontAwesomeIcons.js,
                    FontAwesomeIcons.js,
                    FontAwesomeIcons.html5,
                    FontAwesomeIcons.css,
                  ],
                  iconColors: [
                    Colors.yellow,
                    Colors.blue,
                    Colors.red,
                    Colors.lightBlueAccent,
                  ],
                  texts: [
                    'JavaScript',
                    'TypeScript',
                    'HTML',
                    'CSS',
                  ],
                ),

                const SizedBox(height: 30,),
                Techwidget(
                  icons: [
                    FontAwesomeIcons.react,
                    FontAwesomeIcons.hashtag,
                    FontAwesomeIcons.database,
                    FontAwesomeIcons.php,
                  ],
                  iconColors: [
                    Colors.red,
                    Color.fromARGB(255, 96, 33, 243),
                    Colors.yellow,
                    Colors.blueGrey,
                  ],
                  texts: [
                    'React',
                    'C#',
                    'MySQL',
                    'PHP',
                  ],
                ),

                const SizedBox(height: 150),
                FadeInUp(
                  child: Column(
                    children: [
                      NormalText(text: 'Portafolio desarrollado y diseñado por Yordi Monreal', fontSize: 10, color: Colors.blueGrey,),
                      const SizedBox(height: 5),
                      InkWell(
                        onTap: () => launchURL('https://github.com/YordiMon/portafolio_web'),
                        child: Text(
                          'Ver código del portafolio',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 12,
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.lightBlueAccent,
                            letterSpacing: 3
                          ),),
                        ),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),

              ],
            ),

            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    color: Colors.black87.withValues(alpha: 0.1),
                    padding: EdgeInsets.symmetric(
                      horizontal: horizontalPadding, 
                      vertical: 10,
                    ),
                    child: CustomAppBar(
                      onInicioTap: () => _scrollToPosition(_inicioPosition),
                      onSobreMiTap: () => _scrollToPosition(_sobreMiPosition),
                      onProyectosTap: () => _scrollToPosition(_proyectosPosition),
                      onTecnologiasTap: () => _scrollToPosition(_tecnologiasPosition),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}