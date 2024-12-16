import 'package:delivery_app/data/dummy_data.dart';
import 'package:delivery_app/models/category.dart';

import 'package:delivery_app/screens/items_screen.dart';
import 'package:delivery_app/widgets/category_grid_item.dart';
import 'package:delivery_app/widgets/simple_search_bar.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context, Category category) {
    final filteritems = dummyItems
        .where((item) => item.category.contains(category.id))
        .toList();

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ItemsScreen(category: category,availableItems: filteritems,)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          
        forceMaterialTransparency: true,
        centerTitle: false,
        title: Text("Categories",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: Theme.of(context).colorScheme.onPrimary,
                )),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SimpleSearchBar(),
          ),
          const SizedBox(
            height: 16,
          ),
          Expanded(
            child: GridView(
              padding: const EdgeInsets.all(15),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.81,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              children: [
                for (final category in availableCategories)
                  CategoryGridItem(
                    onSelectCategory: () {
                      _selectCategory(context, category);
                    },
                    category: category,
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
