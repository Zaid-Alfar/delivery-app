// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [CategoriesScreen]
class CategoriesRoute extends PageRouteInfo<void> {
  const CategoriesRoute({List<PageRouteInfo>? children})
      : super(
          CategoriesRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CategoriesScreen();
    },
  );
}

/// generated route for
/// [ItemDetailsScreen]
class ItemDetailsRoute extends PageRouteInfo<ItemDetailsRouteArgs> {
  ItemDetailsRoute({
   key,
    required Item item,
    dynamic re,
    List<PageRouteInfo>? children,
  }) : super(
          ItemDetailsRoute.name,
          args: ItemDetailsRouteArgs(
            key: key,
            item: item,
            
          ),
          initialChildren: children,
        );

  static const String name = 'ItemDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ItemDetailsRouteArgs>();
      return ItemDetailsScreen(
        key: args.key,
        item: args.item,

      );
    },
  );
}

class ItemDetailsRouteArgs {
  const ItemDetailsRouteArgs({
    this.key,
    required this.item,
    this.re,
  });

  final  key;

  final Item item;

  final dynamic re;

  @override
  String toString() {
    return 'ItemDetailsRouteArgs{key: $key, item: $item, re: $re}';
  }
}

/// generated route for
/// [ItemsScreen]
class ItemsRoute extends PageRouteInfo<ItemsRouteArgs> {
  ItemsRoute({
   key,
    required Category category,
    required List<Item> availableItems,
    String? title,
    List<PageRouteInfo>? children,
  }) : super(
          ItemsRoute.name,
          args: ItemsRouteArgs(
            key: key,
            category: category,
            availableItems: availableItems,
            title: title,
          ),
          initialChildren: children,
        );

  static const String name = 'ItemsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ItemsRouteArgs>();
      return ItemsScreen(
        key: args.key,
        category: args.category,
        availableItems: args.availableItems,
        title: args.title,
      );
    },
  );
}

class ItemsRouteArgs {
  const ItemsRouteArgs({
    this.key,
    required this.category,
    required this.availableItems,
    this.title,
  });

  final key;

  final Category category;

  final List<Item> availableItems;

  final String? title;

  @override
  String toString() {
    return 'ItemsRouteArgs{key: $key, category: $category, availableItems: $availableItems, title: $title}';
  }
}

/// generated route for
/// [NavigationBarScreen]
class NavigationBarRoute extends PageRouteInfo<void> {
  const NavigationBarRoute({List<PageRouteInfo>? children})
      : super(
          NavigationBarRoute.name,
          initialChildren: children,
        );

  static const String name = 'NavigationBarRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NavigationBarScreen();
    },
  );
}
