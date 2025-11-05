import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

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
                  appBarButton(text: "Inicio"),
                  appBarButton(text: "Sobre mí"),
                  appBarButton(text: "Proyectos"),
                  appBarButton(text: "Tecnologías"),
                ],
              )
      ),
    );
  }
}

Widget appBarButton({required String text}) {
  return Text(
    text,
    style: const TextStyle(
      color: Colors.blueGrey,
      fontSize: 12,
      letterSpacing: 2,
      fontWeight: FontWeight.w900,
    ),
  );
}
