import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/cubit/categories_cubit.dart';
import 'package:delivery_app/models/category.dart';
import 'package:delivery_app/models/items.dart';
import 'package:delivery_app/routes/app_router.dart';
import 'package:delivery_app/widgets/category_grid_item.dart';
import 'package:delivery_app/widgets/simple_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  void _selectCategory(
      BuildContext context, Category category, List<Item> items) {
    final filterItems = items
        .where(
          (item) => item.category.contains(category.id),
        )
        .toList();
    AutoRouter.of(context).push(
      ItemsRoute(
        category: category,
        availableItems: filterItems,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        centerTitle: false,
        title: Text(
          'Categories',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onPrimary,
              ),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
      ),
      body: BlocBuilder<CategoriesCubit, CategoriesState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.error != null) {
            return Center(
              child: Text(state.error!),
            );
          }

          return Column(
            children: [
              Padding(
                  padding:  EdgeInsets.all(20.w), child: SimpleSearchBar()),
              Expanded(
                child: GridView(
                  padding: EdgeInsets.all(15.w),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.81,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  children: [
                    for (final category in state.categories)
                      CategoryGridItem(
                        category: category,
                        onSelectCategory: () =>
                            _selectCategory(context, category, state.items),
                      )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
