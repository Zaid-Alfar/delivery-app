import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/cubit/categories_cubit.dart';
import 'package:delivery_app/cubit/navigation_cubit.dart';
import 'package:delivery_app/gen/assets.gen.dart';
import 'package:delivery_app/screens/categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class NavigationBarScreen extends StatelessWidget {
  const NavigationBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        body: BlocBuilder<NavigationCubit, NavigationState>(
          builder: (context, state) {
            return IndexedStack(
              index: state.currentIndex,
              children:  [
                BlocProvider(
                  create: (context) => CategoriesCubit()..loadCategories()..loadItems(),
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
              // Background color of the BottomNavigationBar
              indicatorColor: Colors.transparent,
              height: 50.w,

              onDestinationSelected: (index) {
                context.read<NavigationCubit>().updateIndex(index);
              },
              destinations: [
                Padding(
                  padding: EdgeInsets.only(top: 20.w),
                  child: NavigationDestination(
                    label: "",
                    icon: SvgPicture.asset(Assets.images.grid,
                        colorFilter: state.currentIndex == 0
                            ? const ColorFilter.mode(
                                Color.fromRGBO(114, 3, 255,
                                    1), //Theme.of(context).colorScheme.secondary.withOpacity(1),
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
                Padding(
                  padding: EdgeInsets.only(top: 20.w),
                  child: NavigationDestination(
                    label: "",
                    icon: SvgPicture.asset(Assets.images.shoppingCart,
                        colorFilter: state.currentIndex == 1
                            ? const ColorFilter.mode(
                                Color.fromRGBO(114, 3, 255,
                                    1), //Theme.of(context).colorScheme.secondary.withOpacity(1),
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
                Padding(
                  padding: EdgeInsets.only(top: 20.w),
                  child: NavigationDestination(
                    label: "",
                    icon: SvgPicture.asset(Assets.images.user,
                        colorFilter: state.currentIndex == 2
                            ? const ColorFilter.mode(
                                const Color.fromRGBO(114, 3, 255,
                                    1), //Theme.of(context).colorScheme.secondary.withOpacity(1),
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
