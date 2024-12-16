
import 'package:flutter/material.dart';

class Item {
  final String name;
  final double price;
  final String unit;
  final double weight; 
  final String countryOfOrigin;
  final List<String> category;
  final String description;
  final ImageProvider? image; 
  final String? imageUrl;
  final List<String> imageList;
 
  Item(
      {required this.name,
      required this.price,
      required this.unit,
      required this.weight,
      required this.countryOfOrigin,
      required this.category,
      required this.description,
      this.image,
      this.imageUrl,
      required this.imageList});
}
