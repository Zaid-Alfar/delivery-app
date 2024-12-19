import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/models/category.dart';
import 'package:delivery_app/models/items.dart';
import 'package:delivery_app/screens/categories_screen.dart';
import 'package:delivery_app/screens/item_details_screen.dart';
import 'package:delivery_app/screens/items_screen.dart';
import 'package:delivery_app/screens/navigation_bar_screen.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: CategoriesRoute.page),
        AutoRoute(page: ItemDetailsRoute.page),
        AutoRoute(page: ItemsRoute.page),
        AutoRoute(page: NavigationBarRoute.page,initial: true)
      ];
}
