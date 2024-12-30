const categories = {
    "data": [
    {
      "title": "Vegetables",
      "id": "c1",
      "image": "assets/images/Vegetables.png",
      "stock": 43
    },
    {
      "title": "Fruits",
      "id": "c2",
      "image": "assets/images/Fruits.png",
      "stock": 32
    },
    {
      "title": "Bread",
      "id": "c3",
      "image": "assets/images/Bread.png",
      "stock": 22
    },
    {
      "title": "Sweets",
      "id": "c4",
      "image": "assets/images/Sweets.png",
      "stock": 53
    },
    {
      "title": "Pasta",
      "id": "c5",
      "image": "assets/images/Pasta.png",
      "stock": 20
    },
    {
      "title": "Drinks",
      "id": "c6",
      "image": "assets/images/Drinks.png",
      "stock": 10
    }
  ]

  };

  const items = {
    
        "items": [
          {
            "name": "Boston Lettuce",
            "price": 1.10,
            "unit": "piece",
            "weight": 150.0,
            "countryOfOrigin": "Spain",
            "description": "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches, and wraps; it can also be grilled.",
            "imageUrl": "https://example.com/boston_lettuce.jpg",
            "image": "assets/images/boston_lettuce.png",
            "imageList": [
              "assets/images/boston_lettuce_details.png",
              "assets/images/boston_lettuce_details.png",
              "assets/images/boston_lettuce_details.png"
            ],
            "category": ['c1']
          },
          {
            "name": "Tomato",
            "price": 2.30,
            "unit": "kg",
            "weight": 1000.0,
            "countryOfOrigin": "Italy",
            "description": "Tomatoes are a good source of vitamins, especially Vitamin C. They're used in many dishes including salads, sauces, and soups.",
            "imageUrl": "https://example.com/tomato.jpg",
            "image": "assets/images/Bread.png",
            "imageList": [
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png"
            ],
            "category": ['c1']
          },
          {
            "name": "Avocado",
            "price": 1.75,
            "unit": "piece",
            "weight": 200.0,
            "countryOfOrigin": "Mexico",
            "description": "Avocados are nutrient-rich and contain healthy fats. They are commonly used in salads, sandwiches, and the famous guacamole.",
            "imageUrl": "https://example.com/avocado.jpg",
            "image": "assets/images/Bread.png",
            "imageList": [
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png"
            ],
            "category": ["Fruit"]
          },
          {
            "name": "Purple Cauliflower",
            "price": 1.85,
            "unit": "kg",
            "weight": 1000.0,
            "countryOfOrigin": "France",
            "description": "Carrots are rich in beta-carotene, fiber, and antioxidants. They are widely used in salads, soups, and as a snack.",
            "imageUrl": "https://example.com/carrot.jpg",
            "image": "assets/images/purple_cauliflower.png",
            "imageList": [
              "assets/images/purple_cauliflower.png",
              "assets/images/purple_cauliflower.png",
              "assets/images/purple_cauliflower.png"
            ],
            "category": ['c1']
          },
          {
            "name": "Savoy Cabbage",
            "price": 1.45,
            "unit": "kg",
            "weight": 300.0,
            "countryOfOrigin": "Netherlands",
            "description": "Cucumbers are refreshing vegetables that contain high water content. They are often used in salads, sandwiches, and can even be pickled.",
            "imageUrl": "https://example.com/cucumber.jpg",
            "image": "assets/images/savoy_cabbage.png",
            "imageList": [
              "assets/images/savoy_cabbage.png",
              "assets/images/savoy_cabbage.png",
              "assets/images/savoy_cabbage.png"
            ],
            "category": ['c1']
          },
          {
            "name": "Strawberries",
            "price": 3.20,
            "unit": "kg",
            "weight": 1000.0,
            "countryOfOrigin": "Spain",
            "description": "Strawberries are juicy, red berries packed with vitamins, antioxidants, and fiber. They're commonly used in desserts, smoothies, and as snacks.",
            "imageUrl": "https://example.com/strawberries.jpg",
            "image": "assets/images/Bread.png",
            "imageList": [
              "assets/images/Fruits.png",
              "assets/images/Fruits.png",
              "assets/images/Fruits.png",
              "assets/images/Fruits.png",
              "assets/images/Fruits.png",
              "assets/images/Fruits.png"
            ],
            "category": ['c1']
          },
          {
            "name": "Tomato",
            "price": 2.30,
            "unit": "kg",
            "weight": 1000.0,
            "countryOfOrigin": "Italy",
            "description": "Tomatoes are a good source of vitamins, especially Vitamin C. They're used in many dishes including salads, sauces, and soups.",
            "imageUrl": "https://example.com/tomato.jpg",
            "image": "assets/images/Fruits.png",
            "imageList": [
              "assets/images/Fruits.png",
              "assets/images/Fruits.png"
            ],
            "category": ['c1']
          },
          {
            "name": "Avocado",
            "price": 1.75,
            "unit": "piece",
            "weight": 200.0,
            "countryOfOrigin": "Mexico",
            "description": "Avocados are nutrient-rich and contain healthy fats. They are commonly used in salads, sandwiches, and the famous guacamole.",
            "imageUrl": "https://example.com/avocado.jpg",
            "image": "assets/images/Fruits.png",
            "imageList": [
              "assets/images/Fruits.png",
              "assets/images/Fruits.png",
              "assets/images/Fruits.png"
            ],
            "category": ['c2']
          },
          {
            "name": "Carrot",
            "price": 0.99,
            "unit": "kg",
            "weight": 1000.0,
            "countryOfOrigin": "France",
            "description": "Carrots are rich in beta-carotene, fiber, and antioxidants. They are widely used in salads, soups, and as a snack.",
            "imageUrl": "https://example.com/carrot.jpg",
            "image": "assets/images/Bread.png",
            "imageList": [
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png"
            ],
            "category": ['c2']
          },
          {
            "name": "Cucumber",
            "price": 1.50,
            "unit": "piece",
            "weight": 300.0,
            "countryOfOrigin": "Netherlands",
            "description": "Cucumbers are refreshing vegetables that contain high water content. They are often used in salads, sandwiches, and can even be pickled.",
            "imageUrl": "https://example.com/cucumber.jpg",
            "image": "assets/images/Bread.png",
            "imageList": [
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png"
            ],
            "category": ['c2']
          },
          {
            "name": "Strawberries",
            "price": 3.20,
            "unit": "kg",
            "weight": 1000.0,
            "countryOfOrigin": "Spain",
            "description": "Strawberries are juicy, red berries packed with vitamins, antioxidants, and fiber. They're commonly used in desserts, smoothies, and as snacks.",
            "imageUrl": "https://example.com/strawberries.jpg",
            "image": "assets/images/Bread.png",
            "imageList": [
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png"
            ],
            "category": ['c2']
          },
          {
            "name": "Boston Lettuce",
            "price": 1.10,
            "unit": "piece",
            "weight": 150.0,
            "countryOfOrigin": "Spain",
            "description": "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches, and wraps; it can also be grilled.",
            "imageUrl": "https://example.com/boston_lettuce.jpg",
            "image": "assets/images/Bread.png",
            "imageList": [
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png",
              "assets/images/Vegetables.png"
            ],
            "category": ['c3']
          }
        ]
      
      
  };
  
  
  module.exports = {categories,items};

  