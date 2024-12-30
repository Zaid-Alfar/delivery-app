import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.freezed.dart';
part 'category.g.dart'; // Links the generated file

@freezed
class Category with _$Category {
  const factory Category({
    required String id,
    required String title,
    required String image,
    required int stock,
  }) = _Category;

  /// Factory constructor for JSON deserialization
  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}
