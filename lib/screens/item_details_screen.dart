import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/cubit/carousel_cubit.dart';
import 'package:delivery_app/models/items.dart';
import 'package:delivery_app/widgets/carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ItemDetailsScreen extends StatelessWidget {
  const ItemDetailsScreen({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: 0,
            child: Column(
              children: [
                Expanded(
                  child: BlocProvider(
                    create: (context) => CarouselCubit(),
                    child: Carousel(
                      imageList: item.imageList,
                      item: item,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 50,
            left: 10,
            child: IconButton(
                onPressed: () {
                  AutoRouter.of(context).popForced();
                },
                icon: Icon(
                  Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
                  color: Theme.of(context).colorScheme.surface,
                )),
          ),
        ],
      ),
    );
  }
}
