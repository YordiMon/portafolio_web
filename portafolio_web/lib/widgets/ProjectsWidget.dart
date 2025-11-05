import 'package:flutter/material.dart';
import 'package:portafolio_web/widgets/NormalText.dart';
import 'package:portafolio_web/widgets/ProjectsScroll.dart';


class ProjectsWidget extends StatelessWidget {
  const ProjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NormalText(
          text: '< Mis proyectos />',
          fontSize: 16,
          aligment: TextAlign.start,
        ),
        NormalText(
          text: 'Proyectos destacados.',
          color: Colors.lightBlueAccent,
          fontSize: 30,
        ),
        const SizedBox(height: 25),
        ProjectsScroll()
      ],
    );
  }
}
