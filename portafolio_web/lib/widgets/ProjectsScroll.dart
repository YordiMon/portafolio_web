import 'package:flutter/material.dart';
import 'package:portafolio_web/widgets/BPWidget.dart';
import 'package:portafolio_web/widgets/GlideProject.dart';
import 'package:portafolio_web/widgets/HFWidget.dart';
import 'package:portafolio_web/widgets/POACSRBWidget.dart';

class ProjectsScroll extends StatefulWidget {
  const ProjectsScroll({super.key});

  @override
  State<ProjectsScroll> createState() => _ProjectsScrollState();
}

class _ProjectsScrollState extends State<ProjectsScroll> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Widget> pages = [
    HBWidget(),
    GlideProject(),
    BPWidget(),
    POACSRBWidget(),
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

    return Center(
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 450),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: AspectRatio(
                aspectRatio: 1, 
                child: PageView(
                  controller: _pageController,
                  physics: const NeverScrollableScrollPhysics(),
                  children: pages.map((page) {
                    return SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: page,
                    );
                  }).toList(),
                ),
              ),
            ),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  hoverColor: Colors.blueGrey.withValues(alpha: 0.05),
                  highlightColor: Colors.blueGrey.withValues(alpha: 0.1),
                  icon: const Icon(
                    Icons.arrow_left_rounded,
                    size: 30,
                    color: Colors.white60,
                  ),
                  onPressed: _prevPage,
                ),
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
                        color: _currentPage == index
                            ? Colors.white60
                            : Colors.blueGrey[600],
                      ),
                    ),
                  ),
                ),
                IconButton(
                  hoverColor: Colors.blueGrey.withValues(alpha: 0.05),
                  highlightColor: Colors.blueGrey.withValues(alpha: 0.1),
                  icon: const Icon(
                    Icons.arrow_right_rounded,
                    size: 30,
                    color: Colors.white60,
                  ),
                  onPressed: _nextPage,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
