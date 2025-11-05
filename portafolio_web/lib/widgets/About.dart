import 'package:flutter/material.dart';
import 'package:portafolio_web/widgets/EducationWidget.dart';
import 'package:portafolio_web/widgets/ExperienceWidget.dart';
import 'package:portafolio_web/widgets/HobbiesWidget.dart';
import 'package:portafolio_web/widgets/NormalText.dart';

class AboutSection extends StatefulWidget {
  const AboutSection({super.key});

  @override
  State<AboutSection> createState() => _AboutSectionState();
}

class _AboutSectionState extends State<AboutSection> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  

  final List<Widget> pages = const [
    ExperienceWidget(),
    EducationWidget(),
    HobbiesWidget(),
  ];

  void _nextPage() {
    if (_currentPage < pages.length - 1) {
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      setState(() => _currentPage++);
    }
  }

  void _prevPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      setState(() => _currentPage--);
    }
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final double effectiveWidth = screenWidth > 450 ? 450 : screenWidth;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        NormalText(
                        text: '< Sobre mí />',
                        fontSize: 16,
                        aligment: TextAlign.start,
                      ),

        SizedBox(
          height: effectiveWidth * 0.642, 
          child: PageView(
            controller: _pageController,
            physics: const NeverScrollableScrollPhysics(),
            children: pages,
          ),
        ),
        const SizedBox(height: 10),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            IconButton(
              hoverColor: Colors.blueGrey.withValues(alpha: 0.05),
              highlightColor: Colors.blueGrey.withValues(alpha: 0.1),
              icon: const Icon(Icons.arrow_left_rounded, size: 30, color: Colors.white60),
              onPressed: _prevPage,
            ),

            const SizedBox(width: 10),

            Row(
              spacing: 10,
              children: List.generate(
                pages.length,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 6,
                  height: 6,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color:
                        _currentPage == index ? Colors.white60 : Colors.blueGrey[600],
                  ),
                ),
              ),
            ),

            const SizedBox(width: 10),

            IconButton(
              hoverColor: Colors.blueGrey.withValues(alpha: 0.05),
              highlightColor: Colors.blueGrey.withValues(alpha: 0.1),
              icon: const Icon(Icons.arrow_right_rounded, size: 30, color: Colors.white60),
              onPressed: _nextPage,
            ),
          ],
        )
      ],
    );
  }
}
