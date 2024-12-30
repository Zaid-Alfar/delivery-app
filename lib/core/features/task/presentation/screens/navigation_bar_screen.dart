import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/core/features/task/data/remote/api_client.dart';
import 'package:delivery_app/core/features/task/presentation/cubit/categories_cubit.dart';
import 'package:delivery_app/core/features/task/presentation/cubit/navigation_cubit.dart';
import 'package:delivery_app/gen/assets.gen.dart';
import 'package:delivery_app/core/features/task/presentation/screens/categories_screen.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class NavigationBarScreen extends StatelessWidget {
  const NavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dio = Dio();

    if (Platform.isAndroid) {
      dio.options.baseUrl = 'http://10.0.2.2:3000';
    } else {
      dio.options.baseUrl = 'http://localhost:3000';
    }

    final apiClient = ApiClient(dio);

    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            return IndexedStack(
              index: state.currentIndex,
              children: [
                BlocProvider(
                  create: (context) => CategoriesCubit()
                    ..loadCategories()
                    ..loadItems(),
                  child: const CategoriesScreen(),
                ),
                const Center(child: Text("Cart Screen")),
                const Center(child: Text("User Screen")),
              ],
            );
          },
        ),
        bottomNavigationBar: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            return NavigationBar(
              selectedIndex: state.currentIndex,
              backgroundColor: Theme.of(context).colorScheme.surface,
              indicatorColor: Colors.transparent,
              height: 50.w,
              onDestinationSelected: (index) {
                context.read<NavigationCubit>().updateIndex(index);
              },
              destinations: [
                Padding(
                  padding: EdgeInsets.only(top: 30.w),
                  child: NavigationDestination(
                    label: "",
                    icon: SvgPicture.asset(Assets.images.grid,
                        colorFilter: state.currentIndex == 0
                            ? const ColorFilter.mode(
                                Color.fromRGBO(114, 3, 255, 1), BlendMode.srcIn)
                            : ColorFilter.mode(
                                Theme.of(context)
                                    .colorScheme
                                    .secondary
                                    .withOpacity(1),
                                BlendMode.srcIn) //

                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.w),
                  child: NavigationDestination(
                    label: "",
                    icon: SvgPicture.asset(Assets.images.shoppingCart,
                        colorFilter: state.currentIndex == 1
                            ? const ColorFilter.mode(
                                Color.fromRGBO(114, 3, 255, 1), BlendMode.srcIn)
                            : ColorFilter.mode(
                                Theme.of(context)
                                    .colorScheme
                                    .secondary
                                    .withOpacity(1),
                                BlendMode.srcIn) //
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30.w),
                  child: NavigationDestination(
                    label: "",
                    icon: SvgPicture.asset(Assets.images.user,
                        colorFilter: state.currentIndex == 2
                            ? const ColorFilter.mode(
                                const Color.fromRGBO(114, 3, 255, 1),
                                BlendMode.srcIn)
                            : ColorFilter.mode(
                                Theme.of(context)
                                    .colorScheme
                                    .secondary
                                    .withOpacity(1),
                                BlendMode.srcIn) //
                        ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
