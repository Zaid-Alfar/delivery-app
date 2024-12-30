import 'package:delivery_app/models/category.dart';
import 'package:delivery_app/models/items.dart';
import 'package:flutter/material.dart';

final availableCategories = [
  Category(
      id: 'c1',
      title: 'Vegetables',
      image: const AssetImage('assets/images/Vegetables.png'),
      stock: 43),
  Category(
      id: 'c2',
      title: 'Fruits',
      image: const AssetImage('assets/images/Fruits.png'),
      stock: 32),
  Category(
      id: 'c3',
      title: 'Bread',
      image: const AssetImage('assets/images/Bread.png'),
      stock: 22),
  Category(
      id: 'c4',
      title: 'Sweets',
      image: const AssetImage('assets/images/Sweets.png'),
      stock: 53),
  Category(
      id: 'c5',
      title: 'Pasta',
      image: const AssetImage('assets/images/Pasta.png'),
      stock: 20),
  Category(
      id: 'c6',
      title: 'Drinks',
      image: const AssetImage('assets/images/Drinks.png'),
      stock: 10),
];

final dummyItems = [
  Item(
    name: "Boston Lettuce",
    price: 1.10,
    unit: "piece",
    weight: 150.0,
    countryOfOrigin: "Spain",
    category: ['c1'], // Linked to 'Leaf vegetable'
    description:
        "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches, and wraps; it can also be grilled.",
    imageUrl: "https://example.com/boston_lettuce.jpg",
    image: const AssetImage("assets/images/buston_lettus.png"),
    imageList: [
    'assets/images/buston_lettus.png',
    'assets/images/buston_lettus.png',
    'assets/images/buston_lettus.png'
    
    ]
  ),
  Item(
    name: "Tomato",
    price: 2.30,
    unit: "kg",
    weight: 1000.0,
    countryOfOrigin: "Italy",
    category: ['c4', 'c5'], // Linked to 'Fruit vegetable' and 'Vegetable'
    description:
        "Tomatoes are a good source of vitamins, especially Vitamin C. They're used in many dishes including salads, sauces, and soups.",
    imageUrl: "https://example.com/tomato.jpg",
    image: const AssetImage("assets/images/Bread.png"),
        imageList: [
      'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',

    ]
  ),
  Item(
    name: "Avocado",
    price: 1.75,
    unit: "piece",
    weight: 200.0,
    countryOfOrigin: "Mexico",
    category: ['c4'], // Linked to 'Fruit'
    description:
        "Avocados are nutrient-rich and contain healthy fats. They are commonly used in salads, sandwiches, and the famous guacamole.",
    imageUrl: "https://example.com/avocado.jpg",
    image: const AssetImage("assets/images/Bread.png"),
     imageList:   [
      'assets/images/Vegetables.png'
      'assets/images/Vegetables.png'
      'assets/images/Vegetables.png'
      'assets/images/Vegetables.png'
      'assets/images/Vegetables.png'
      'assets/images/Vegetables.png'
      

     ]
  ),
  Item(
    name: "Purple Cauliflower",
    price: 1.85,
    unit: "kg",
    weight: 1000.0,
    countryOfOrigin: "France",
    category: ['c1', 'c2'], // Linked to 'Root vegetable' and 'Vegetable'
    description:
        "Carrots are rich in beta-carotene, fiber, and antioxidants. They are widely used in salads, soups, and as a snack.",
    imageUrl: "https://example.com/carrot.jpg",
    image: const AssetImage(  'assets/images/purple_cauliflower.png'),
    imageList: [
        
     'assets/images/purple_cauliflower.png',
     'assets/images/purple_cauliflower.png',
     'assets/images/purple_cauliflower.png',
    ]
  ),
  Item(
    name: "Savoy Cabbage",
    price: 1.45,
    unit: "kg",
    weight: 300.0,
    countryOfOrigin: "Netherlands",
    category: ['c1'], // Linked to 'Vegetable'
    description:
        "Cucumbers are refreshing vegetables that contain high water content. They are often used in salads, sandwiches, and can even be pickled.",
    imageUrl: "https://example.com/cucumber.jpg",
    image: const AssetImage("assets/images/savoy_cabbage.png"),
        imageList: [
'assets/images/savoy_cabbage.png',
'assets/images/savoy_cabbage.png',
'assets/images/savoy_cabbage.png',

    ]
  ),
  Item(
    name: "Strawberries",
    price: 3.20,
    unit: "kg",
    weight: 1000.0,
    countryOfOrigin: "Spain",
    category: ['c4'], // Linked to 'Fruit'
    description:
        "Strawberries are juicy, red berries packed with vitamins, antioxidants, and fiber. They're commonly used in desserts, smoothies, and as snacks.",
    imageUrl: "https://example.com/strawberries.jpg",

    image: const AssetImage("assets/images/Bread.png"),
    imageList: [
      'assets/images/Fruits.png',
      'assets/images/Fruits.png',
      'assets/images/Fruits.png',
      'assets/images/Fruits.png',
      'assets/images/Fruits.png',
      'assets/images/Fruits.png',
    ]
  ),
  
  
  Item(
    name: "Tomato",
    price: 2.30,
    unit: "kg",
    weight: 1000.0,
    countryOfOrigin: "Italy",
    category: ['c2', 'c5'], // Linked to 'Fruit vegetable' and 'Vegetable'
    description:
        "Tomatoes are a good source of vitamins, especially Vitamin C. They're used in many dishes including salads, sauces, and soups.",
    imageUrl: "https://example.com/tomato.jpg",
    image: const AssetImage("assets/images/Fruits.png"),
    imageList: [
    'assets/images/Fruits.png',
    'assets/images/Fruits.png'

    ]
  ),
  Item(
    name: "Avocado",
    price: 1.75,
    unit: "piece",
    weight: 200.0,
    countryOfOrigin: "Mexico",
    category: ['c2'], 
    description:
        "Avocados are nutrient-rich and contain healthy fats. They are commonly used in salads, sandwiches, and the famous guacamole.",
    imageUrl: "https://example.com/avocado.jpg",
    image: const AssetImage("assets/images/Fruits.png"),
        imageList: [
     'assets/images/Fruits.png',
     'assets/images/Fruits.png',
     'assets/images/Fruits.png'

    ]

  ),
  Item(
    name: "Carrot",
    price: 0.99,
    unit: "kg",
    weight: 1000.0,
    countryOfOrigin: "France",
    category: ['c3', 'c5'], // Linked to 'Root vegetable' and 'Vegetable'
    description:
        "Carrots are rich in beta-carotene, fiber, and antioxidants. They are widely used in salads, soups, and as a snack.",
    imageUrl: "https://example.com/carrot.jpg",
    image: const AssetImage("assets/images/Bread.png"),
        imageList: [
      'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',

    ]
  ),
  Item(
    name: "Cucumber",
    price: 1.50,
    unit: "piece",
    weight: 300.0,
    countryOfOrigin: "Netherlands",
    category: ['c5'], // Linked to 'Vegetable'
    description:
        "Cucumbers are refreshing vegetables that contain high water content. They are often used in salads, sandwiches, and can even be pickled.",
    imageUrl: "https://example.com/cucumber.jpg",
    image: const AssetImage("assets/images/Bread.png"),
        imageList: [
      'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',

    ]
  ),
  Item(
    name: "Strawberries",
    price: 3.20,
    unit: "kg",
    weight: 1000.0,
    countryOfOrigin: "Spain",
    category: ['c4'], // Linked to 'Fruit'
    description:
        "Strawberries are juicy, red berries packed with vitamins, antioxidants, and fiber. They're commonly used in desserts, smoothies, and as snacks.",
    imageUrl: "https://example.com/strawberries.jpg",

    image: const AssetImage("assets/images/Bread.png"),
        imageList: [
      'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',

    ]
  ),
Item(
    name: "Boston Lettuce",
    price: 1.10,
    unit: "piece",
    weight: 150.0,
    countryOfOrigin: "Spain",
    category: ['c4'], // Linked to 'Leaf vegetable'
    description:
        "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches, and wraps; it can also be grilled.",
    imageUrl: "https://example.com/boston_lettuce.jpg",
    image: const AssetImage("assets/images/Bread.png"),
        imageList: [
      'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',

    ]
  ),
  Item(
    name: "Orange",
    price: 2.30,
    unit: "kg",
    weight: 1000.0,
    countryOfOrigin: "Italy",
    category: ['c2', 'c5'], // Linked to 'Fruit vegetable' and 'Vegetable'
    description:
        "Tomatoes are a good source of vitamins, especially Vitamin C. They're used in many dishes including salads, sauces, and soups.",
    imageUrl: "https://example.com/tomato.jpg",
    image: const AssetImage("assets/images/Fruits.png"),
        imageList: [
      'assets/images/Fruits.png',
      'assets/images/Fruits.png',

    ]
  ),
  Item(
    name: "Avocado",
    price: 1.75,
    unit: "piece",
    weight: 200.0,
    countryOfOrigin: "Mexico",
    category: ['c2'], // Linked to 'Fruit'
    description:
        "Avocados are nutrient-rich and contain healthy fats. They are commonly used in salads, sandwiches, and the famous guacamole.",
    imageUrl: "https://example.com/avocado.jpg",
    image: const AssetImage("assets/images/Fruits.png"),
        imageList: [
      'assets/images/Fruits.png',
      'assets/images/Fruits.png',
      'assets/images/Fruits.png',
      'assets/images/Fruits.png'
    ]
  ),
  Item(
    name: "Carrot",
    price: 0.99,
    unit: "kg",
    weight: 1000.0,
    countryOfOrigin: "France",
    category: ['c3', 'c5'], // Linked to 'Root vegetable' and 'Vegetable'
    description:
        "Carrots are rich in beta-carotene, fiber, and antioxidants. They are widely used in salads, soups, and as a snack.",
    imageUrl: "https://example.com/carrot.jpg",
    image: const AssetImage("assets/images/Bread.png"),
        imageList: [
      'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',

    ]
  ),
  Item(
    name: "Cucumber",
    price: 1.50,
    unit: "piece",
    weight: 300.0,
    countryOfOrigin: "Netherlands",
    category: ['c5'], // Linked to 'Vegetable'
    description:
        "Cucumbers are refreshing vegetables that contain high water content. They are often used in salads, sandwiches, and can even be pickled.",
    imageUrl: "https://example.com/cucumber.jpg",
    image: const AssetImage("assets/images/Bread.png"),
        imageList: [
      'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',

    ]
  ),
  Item(
    name: "Strawberries",
    price: 3.20,
    unit: "kg",
    weight: 1000.0,
    countryOfOrigin: "Spain",
    category: ['c4'], // Linked to 'Fruit'
    description:
        "Strawberries are juicy, red berries packed with vitamins, antioxidants, and fiber. They're commonly used in desserts, smoothies, and as snacks.",
    imageUrl: "https://example.com/strawberries.jpg",

    image: const AssetImage("assets/images/Bread.png"),
        imageList: [
      'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',
       'assets/images/Vegetables.png',

    ]
  ),



];

