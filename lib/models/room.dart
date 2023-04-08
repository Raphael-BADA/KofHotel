import 'category.dart';

class Room {
  final int id;
  final String name;
  final String price;
  final String imagePath;
  final String description;
  final String distance;
  final int rating;
  final String reviews;
  final Category category;
  Room({
    required this.id,
    required this.name,
    required this.price,
    required this.imagePath,
    required this.description,
    required this.distance,
    required this.rating,
    required this.reviews,
    required this.category,
  });
}
