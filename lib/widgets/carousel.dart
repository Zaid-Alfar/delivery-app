import 'package:delivery_app/cubit/carousel_cubit.dart';
import 'package:delivery_app/models/items.dart';
import 'package:delivery_app/widgets/item_detail_summary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Carousel extends StatelessWidget {
  const Carousel({super.key, required this.imageList, required this.item});
  final List<String> imageList;
  final Item item;

  @override
  Widget build(BuildContext context) {
    final PageController pageController = PageController();
    final height = MediaQuery.of(context).size.height;

    // Listen to the PageController and update the Cubit
    pageController.addListener(() {
      context.read<CarouselCubit>().updateIndex(pageController.page!.round());
    });

    return Scaffold(
      body: Stack(
        children: [
          // Carousel with image list
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            height: height * 0.399,
            child: PageView.builder(
              controller: pageController,
              itemCount: imageList.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imageList[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                );
              },
            ),
          ),

          // Dot indicator for the carousel
          Positioned(
            bottom: height * 0.686 + 20,
            right: 0,
            left: 0,
            child: BlocBuilder<CarouselCubit, int>(
              builder: (context, currentIndex) {
                return buildDotIndicator(currentIndex, imageList.length);
              },
            ),
          ),

          ItemDetailSummary(item: item),
        ],
      ),
    );
  }

  // Dot indicator widget
  Widget buildDotIndicator(int currentIndex, int totalDots) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(totalDots, (index) {
          return AnimatedContainer(
            duration: Duration(milliseconds: 300),
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            width: currentIndex == index ? 8.0 : 8.0,
            height: 8.0,
            decoration: BoxDecoration(
              color: currentIndex == index
                  ? Colors.white
                  : Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(4.0),
            ),
          );
        }),
      ),
    );
  }
}
