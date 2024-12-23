class OnboardingModel {
  final int id;
  final String imageUrl;
  final String title;
  final String content;
  final DateTime createdAt;
  final DateTime updatedAt;

  OnboardingModel({
    required this.id,
    required this.imageUrl,
    required this.title,
    required this.content,
    required this.createdAt,
    required this.updatedAt,
  });

  factory OnboardingModel.fromJson(Map<String, dynamic> json) {
    return OnboardingModel(
      id: json['id'],
      imageUrl: json['imageUrl'],
      title: json['title'],
      content: json['content'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }
}
