import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
 const Carousel({super.key, required this.imageList});
  final List<String> imageList;

  @override
  State<Carousel> createState() {
    return _CarouselState();
  }
}

class _CarouselState extends State<Carousel> {
  // List of image URLs or image assets

  // PageController to track carousel page index
 final PageController _pageController = PageController();

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentIndex = _pageController.page!.round();
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Carousel with image list
          PageView.builder(
            controller: _pageController,
            itemCount: widget.imageList.length,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  widget.imageList[index],
                  fit: BoxFit.cover,
                  width: double
                      .infinity, // Ensures image stretches across the screen
                ),
              );
            },
          ),

          // Dot indicator for the carousel
          Positioned(
              bottom: 100, right: 0, left: 0, child: _buildDotIndicator()),
        ],
      ),
    );
  }

  // Dot indicator widget
  Widget _buildDotIndicator() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(widget.imageList.length, (index) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 300),
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            width: _currentIndex == index ? 8.0 : 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              color: _currentIndex == index
                  ? Colors.white
                  : Colors.white.withOpacity(
                      0.5), // Active dot is white, inactive is grey
              borderRadius: BorderRadius.circular(4.0),
            ),
          );
        }),
      ),
    );
  }
}
