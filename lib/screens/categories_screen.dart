import 'dart:convert';
import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/models/category.dart';
import 'package:delivery_app/models/items.dart';
import 'package:delivery_app/routes/app_router.dart';
import 'package:delivery_app/widgets/category_grid_item.dart';
import 'package:delivery_app/widgets/simple_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

@RoutePage()
class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<Category> _Category = [];
  List<Item> _items = [];
  var _isLoading = true;
  String? _error;

  void _loadCategory() async {
    final url = Uri.http('localhost:3000', 'categories');

    try {
      final response = await http.get(url);

      if (response.statusCode >= 400) {
        setState(() {
          _error = "Failed to reterive data please try again later.";
        });
      }

      if (response.body == 'null') {
        setState(() {
          _isLoading = false;
        });
        return;
      }

      final Map<String, dynamic> decodedResponse = json.decode(response.body);
      final List<dynamic> listData = decodedResponse['data'];
      final List<Category> _loadedCategory = [];

      for (var category in listData) {
        _loadedCategory.add(Category(
          id: category['id'],
          title: category['title'],
          image: category['image'],
          stock: category['stock'],
        ));
      }

      setState(() {
        _Category = _loadedCategory;
      });
    } catch (error) {
      setState(() {
        _error = "Something went wrong, please try again later";
      });
    }
  }

  void _loadItems() async {
    final url = Uri.http('localhost:3000', 'items');

    try {
      final response = await http.get(url);
      if (response.statusCode >= 400) {
        setState(() {
          _error = "Failed to reterive data please try again later.";
        });
      }

      if (response.body == 'null') {
        setState(() {
          _isLoading = false;
        });
        return;
      }

      final Map<String, dynamic> decodedResponse = json.decode(response.body);
      final List<dynamic> listData = decodedResponse['items'];
      final List<Item> _loadedItem = [];

      for (var item in listData) {
        _loadedItem.add(Item(
            name: item['name'],
            price: double.tryParse(item['price'].toString()) ?? 0,
            unit: item['unit'],
            weight: double.tryParse(item['weight'].toString()) ?? 0,
            countryOfOrigin: item['countryOfOrigin'],
            description: item['description'],
            imageList: List<String>.from(item['imageList']),
            image: item['image'],
            category: List<String>.from(item['category'])));
      }

      setState(() {
        _items = _loadedItem;
        _isLoading = false;
      });
    } catch (error) {
      setState(() {
        _error = "Something went wrong, please try again later";
      });
    }
  }

  void _selectCategory(BuildContext context, Category category) {
    final filteritems =
        _items.where((item) => item.category.contains(category.id)).toList();

    AutoRouter.of(context).push(ItemsRoute(
      category: category,
      availableItems: filteritems,
    ));
  }

  @override
  void initState() {
    super.initState();
    _loadCategory();
    _loadItems();
  }

  @override
  Widget build(BuildContext context) {
    Widget content = Column(
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
              for (final category in _Category)
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
    );

    if (_isLoading) {
      content = const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (_error != null) {
      content = Center(
        child: Text(_error!),
      );
    }

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
        body: content);
  }
}
