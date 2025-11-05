import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final VoidCallback? onInicioTap;
  final VoidCallback? onSobreMiTap;
  final VoidCallback? onProyectosTap;
  final VoidCallback? onTecnologiasTap;

  const CustomAppBar({
    super.key,
    this.onInicioTap,
    this.onSobreMiTap,
    this.onProyectosTap,
    this.onTecnologiasTap,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 250),
      height: 30,
      curve: Curves.easeInOut,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.transparent
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            appBarButton(
              text: "Inicio", 
              onTap: onInicioTap
            ),
            appBarButton(
              text: "Sobre mí", 
              onTap: onSobreMiTap
            ),
            appBarButton(
              text: "Proyectos", 
              onTap: onProyectosTap
            ),
            appBarButton(
              text: "Tecnologías", 
              onTap: onTecnologiasTap
            ),
          ],
        ),
      ),
    );
  }
}

Widget appBarButton({required String text, VoidCallback? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.blueGrey,
          fontSize: 12,
          letterSpacing: 2,
          fontWeight: FontWeight.w900,
        ),
      ),
    ),
  );
}