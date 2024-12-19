import 'package:flutter/material.dart';

class Category {
  Category({required this.id, required this.title, required this.image ,required this.stock});

  final String id;
  final String title;
  final String image;
  final int stock;
}
