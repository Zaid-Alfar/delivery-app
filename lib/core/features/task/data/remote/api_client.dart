import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:delivery_app/core/features/task/data/models/category.dart';
import 'package:delivery_app/core/features/task/data/models/items.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'http://localhost:3000') // Use 'http://localhost:3000' for iOS
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/categories")
  Future<List<Category>> getCategories();
  

  @GET("/items")
  Future<List<Item>> getItems();
}
