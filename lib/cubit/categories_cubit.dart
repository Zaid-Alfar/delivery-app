import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:delivery_app/models/category.dart';
import 'package:delivery_app/models/items.dart';

part 'categories_state.dart';

class CategoriesCubit extends Cubit<CategoriesState> {
  CategoriesCubit() : super(CategoriesState(isLoading: true));

  Future<void> loadCategories() async {
    final dio = Dio();
    final url = Platform.isAndroid
        ? 'http://10.0.2.2:3000/categories'
        : 'http://localhost:3000/categories';

    try {
      final response = await dio.get(url);

      if (response.statusCode! >= 400) {
        emit(state.copyWith(
          error: "Failed to retrieve data, please try again later.",
          isLoading: false,
        ));
        return;
      }

      // Handle null or empty response
      if (response.data == null) {
        emit(state.copyWith(isLoading: false));
        return;
      }

      // Parse the response directly
      final List<dynamic> listData = response.data['data'];

      final List<Category> loadedCategories = listData
          .map(
            (category) => Category(
              id: category['id'],
              title: category['title'],
              image: category['image'],
              stock: category['stock'],
            ),
          )
          .toList();

      emit(state.copyWith(
        categories: loadedCategories,
        isLoading: false,
        error: null,
      ));
    } catch (error) {
      if (!isClosed) {
        emit(state.copyWith(
          error: "Something went wrong, please try again later.",
          isLoading: false,
        ));
      }
    }
  }

  Future<void> loadItems() async {
    final dio = Dio();
    final url = Platform.isAndroid
        ? 'http://10.0.2.2:3000/items'
        : 'http://localhost:3000/items';

    try {
      final response = await dio.get(url);


      if (response.statusCode! >= 400) {
        emit(state.copyWith(
          error: "Failed to retrieve data, please try again later.",
          isLoading: false,
        ));
        return;
      }

      if (response.data == null) {
        emit(state.copyWith(isLoading: false));
        return;
      }


      final List<dynamic> listData = response.data['items'];

      final List<Item> loadedItems = listData.map((item) {
        return Item(
          name: item['name'],
          price: double.tryParse(item['price'].toString()) ?? 0,
          unit: item['unit'],
          weight: double.tryParse(item['weight'].toString()) ?? 0,
          countryOfOrigin: item['countryOfOrigin'],
          description: item['description'],
          imageList: List<String>.from(item['imageList']),
          image: item['image'],
          category: List<String>.from(item['category']),
          stock: item['stock']
        );
      }).toList();

      emit(state.copyWith(
        items: loadedItems,
        isLoading: false,
        error: null,
      ));
    } catch (error) {
      if (!isClosed) {
        emit(state.copyWith(
          error: "Something went wrong, please try again later.",
          isLoading: false,
        ));
      }
    }
  }
}
