import 'package:delivery_app/core/features/task/presentation/cubit/carousel_cubit.dart';
import 'package:delivery_app/core/features/task/data/models/items.dart';
import 'package:delivery_app/core/features/task/presentation/widgets/dot_indicator.dart';
import 'package:delivery_app/core/features/task/presentation/widgets/item_detail_summary.dart';
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
    final width = MediaQuery.of(context).size.width;

    pageController.addListener(() {
      context.read<CarouselCubit>().updateIndex(pageController.page!.round());
    });

    return Scaffold(
      body: Stack(
        children: [
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
          Positioned(
            bottom: width >= 400 ? height * 0.600 + 5 : height * 0.686 + 5,
            right: 0,
            left: 0,
            child: BlocBuilder<CarouselCubit, int>(
              builder: (context, currentIndex) {
                return DotIndicator(
                    currentIndex: currentIndex, totalDots: imageList.length);
              },
            ),
          ),
          ItemDetailSummary(item: item),
        ],
      ),
    );
  }
}
