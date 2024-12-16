import 'dart:io';

import 'package:delivery_app/models/category.dart';
import 'package:delivery_app/models/items.dart';
import 'package:delivery_app/screens/item_details_screen.dart';
import 'package:delivery_app/widgets/item_card.dart';
import 'package:delivery_app/widgets/items_filter.dart';
import 'package:delivery_app/widgets/simple_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemsScreen extends StatelessWidget {
  const ItemsScreen(
      {super.key,
      required this.category,
      required this.availableItems,
      this.title});
  final String? title;
  final List<Item> availableItems;
  final Category category;
  @override
  Widget build(BuildContext context) {
    void selectMeal(BuildContext context, item) {
      Navigator.of(context).push(MaterialPageRoute(
          builder: (ctx) => ItemDetailsScreen(
          
                item: item,
              
              )));
    }

    Widget itemFilterAppBar = AppBar(leading: IconButton(
      icon: Icon( Platform.isIOS  ? Icons.arrow_back_ios : Icons.arrow_back),//icon:  Icon( Platform.isIOS  ? Icons.arrow_back_ios : Icons.arrow_back ,color: Theme.of(context).colorScheme.onPrimary,))
      color: Theme.of(context).colorScheme.onPrimary, // Set back button color to contrast with secondary background
      onPressed: () {
        // Handle back button press (e.g., Navigator.pop(context))
        Navigator.of(context).pop();
      },
    ),
      forceMaterialTransparency: true,

      backgroundColor: Colors.transparent,
      // Theme.of(context).colorScheme.surface, // Make the default background transparent
      elevation: 0, // Removes shadow
      centerTitle: false,
      flexibleSpace: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(
              height: 220,
              alignment: Alignment.bottomRight,
              'assets/images/${category.title}.svg', // Replace with your image path
              // Ensures the image covers the whole space
            ),
          ),

          // Title
          Positioned(
            bottom: 100, // Adjust this value to move the title up or down
            left: 30,
            child: Text(
              category.title, // Your title variable
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),

          // Search bar with space from the title
          Positioned(
            bottom:
                30, // Adjust this value to move the search bar down (make sure it's lower than the title)
            left: 20,
            right: 20,
            child: SimpleSearchBar(),
          ),
        ],
      ),
    );

    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Uh oh ... nothing here!",
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Try diffrent category",
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onSurface),
          )
        ],
      ),
    );

    if (availableItems.isNotEmpty) {
      content = Expanded(
        child: ListView.builder(
            itemCount: availableItems.length,
            itemBuilder: (context, index) => Item_card(
                  item: availableItems[index],
                  onSelectItem: (item) {
                    selectMeal(context, item);
                  },
                )),
      );
    }

    return Scaffold(

      
      


        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: PreferredSize(
          
            preferredSize: Size.fromHeight(200), child: itemFilterAppBar),
        body: Column(
          children: [
           const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ItemsFilter(availableitems: availableItems),
            ),
            const SizedBox(
              height: 25,
            ),
            content
          ],
        ));
  }
}
