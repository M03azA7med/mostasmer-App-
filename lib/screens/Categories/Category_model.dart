class Category {
  final int id;
  final String name;
  final String imageUrl;
  final int? parentId;

  Category({
    required this.id,
    required this.name,
    required this.imageUrl,
    this.parentId,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      imageUrl: json['imageUrl'],
      parentId: json['parentId'],
    );
  }
}
