import 'dart:convert';
import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:delivery_app/models/category.dart';
import 'package:delivery_app/routes/app_router.dart';
import 'package:delivery_app/models/items.dart';
import 'package:delivery_app/widgets/carousel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

@RoutePage()
class ItemDetailsScreen extends StatefulWidget {
  const ItemDetailsScreen({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  List<Item> _items = [];
  var _isLoading = true;
  String? _error;

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
          price: item['price'],
          unit: item['unit'],
          weight: item['countryOfOrigin'],
          countryOfOrigin: item['countryOfOrigin'],
          description: item['description'],
          imageList: item['imageList'],
          image: item['image'],
          category: item['category'],
        ));
      }

      setState(() {
        _items = _loadedItem;
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

    AutoRouter.of(context).push(
      ItemsRoute(
        category: category,
        availableItems: filteritems,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _loadItems();
  }

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
                  child: Carousel(
                    imageList: widget.item.imageList,
                    item: widget.item,
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
