import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/gen/assets.gen.dart';
import 'package:delivery_app/core/features/task/data/models/category.dart';
import 'package:delivery_app/core/features/task/data/models/items.dart';
import 'package:delivery_app/core/routes/app_router.dart';
import 'package:delivery_app/core/features/task/presentation/widgets/app_scaffold.dart';
import 'package:delivery_app/core/features/task/presentation/widgets/item_card.dart';
import 'package:delivery_app/core/features/task/presentation/widgets/items_filter.dart';
import 'package:delivery_app/core/features/task/presentation/widgets/simple_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
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
      AutoRouter.of(context).push(ItemDetailsRoute(
        item: item,
      ));
    }

    Widget itemFilterAppBar = AppBar(
      leading: IconButton(
        icon: Icon(Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back),
        color: Theme.of(context).colorScheme.onPrimary,
        onPressed: () {
          AutoRouter.of(context).popUntilRoot();
        },
      ),
      forceMaterialTransparency: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: false,
      flexibleSpace: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: SvgPicture.asset(
              height: 220,
              alignment: Alignment.bottomRight,
              category.title == 'Fruits'
                  ? Assets.images.fruitsSvg
                  : Assets.images.vegetablesSvg,
            ),
          ),
          Positioned(
            bottom: 30,
            left: 25,
            child: Text(
              category.title,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onPrimary,
                    fontWeight: FontWeight.bold,
                  ),
            ),
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
            itemBuilder: (context, index) => ItemCard(
                  item: availableItems[index],
                  onSelectItem: (item) {
                    selectMeal(context, item);
                  },
                )),
      );
    }

    return AppScaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(130), child: itemFilterAppBar),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 15.0.w, right: 15.w, bottom: 20.w),
              child: SimpleSearchBar(),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: ItemsFilter(availableItems: availableItems),
            ),
            const SizedBox(
              height: 25,
            ),
            content
          ],
        ));
  }
}
