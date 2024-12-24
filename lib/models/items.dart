class Item {
  final String name;
  final double price;
  final String unit;
  final double weight; 
  final String countryOfOrigin;
  final List<String> category;
  final String description;
  final String? image; 
  final String? imageUrl;
  final List<String> imageList;
  final int stock; // Added stock property

  Item({
    required this.name,
    required this.price,
    required this.unit,
    required this.weight,
    required this.countryOfOrigin,
    required this.category,
    required this.description,
    this.image,
    this.imageUrl,
    required this.imageList,
    required this.stock, // Make stock required
  });
}
