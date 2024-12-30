import 'package:freezed_annotation/freezed_annotation.dart';

part 'items.freezed.dart'; // Links the freezed-generated file
part 'items.g.dart'; // Links the json_serializable-generated file

@freezed
class Item with _$Item {
  const factory Item({
    required String name,
    required double price,
    required String unit,
    required double weight,
    required String countryOfOrigin,
    required List<String> category,
    required String description,
    String? image,
    String? imageUrl,
    required List<String> imageList,
    required int stock,
  }) = _Item;

  /// Factory constructor for JSON deserialization
  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
