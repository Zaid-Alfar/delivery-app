part of 'categories_cubit.dart';



final class CategoriesState {


 final bool isLoading;
  final String? error;
  final List<Category> categories;
  final List<Item> items;


   CategoriesState({
    this.isLoading = false,
    this.error,
    this.categories = const [],
    this.items = const [],
  });

   CategoriesState copyWith({
    bool? isLoading,
    String? error,
    List<Category>? categories,
    List<Item>? items,
  }) {
    return CategoriesState(
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      categories: categories ?? this.categories,
      items: items ?? this.items,
    );
  }


}



