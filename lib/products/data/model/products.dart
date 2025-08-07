//model classes
//freezed

class Products {
  final String id;
  final String title;
  final String image;

  Products({required this.id, required this.title, required this.image});

  // Factory constructor to create a Products instance from a map
  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
      id: map['id'] as String,
      title: map['title'] as String,
      image: map['image'] as String,
    );
  }
}
