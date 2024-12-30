// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'items.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemImpl _$$ItemImplFromJson(Map<String, dynamic> json) => _$ItemImpl(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      unit: json['unit'] as String,
      weight: (json['weight'] as num).toDouble(),
      countryOfOrigin: json['countryOfOrigin'] as String,
      category:
          (json['category'] as List<dynamic>).map((e) => e as String).toList(),
      description: json['description'] as String,
      image: json['image'] as String?,
      imageUrl: json['imageUrl'] as String?,
      imageList:
          (json['imageList'] as List<dynamic>).map((e) => e as String).toList(),
      stock: (json['stock'] as num).toInt(),
    );

Map<String, dynamic> _$$ItemImplToJson(_$ItemImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'unit': instance.unit,
      'weight': instance.weight,
      'countryOfOrigin': instance.countryOfOrigin,
      'category': instance.category,
      'description': instance.description,
      'image': instance.image,
      'imageUrl': instance.imageUrl,
      'imageList': instance.imageList,
      'stock': instance.stock,
    };
