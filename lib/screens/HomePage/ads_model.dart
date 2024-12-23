class Ad {
  int id;
  String title;
  String description;
  String imageUrl;
  String targetUrl;
  DateTime startDate;
  DateTime endDate;
  int budget;
  int priority;
  String status;
  String placement;
  String adType;
  String popupSize;
  String frequency;
  int timing;
  bool closable;
  int displayDuration;
  DateTime createdAt;
  DateTime updatedAt;

  Ad({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.targetUrl,
    required this.startDate,
    required this.endDate,
    required this.budget,
    required this.priority,
    required this.status,
    required this.placement,
    required this.adType,
    required this.popupSize,
    required this.frequency,
    required this.timing,
    required this.closable,
    required this.displayDuration,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Ad.fromJson(Map<String, dynamic> json) {
    return Ad(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      imageUrl: json['imageUrl'],
      targetUrl: json['targetUrl'],
      startDate: DateTime.parse(json['startDate']),
      endDate: DateTime.parse(json['endDate']),
      budget: json['budget'],
      priority: json['priority'],
      status: json['status'],
      placement: json['placement'],
      adType: json['adType'],
      popupSize: json['popupSize'],
      frequency: json['frequency'],
      timing: json['timing'],
      closable: json['closable'],
      displayDuration: json['displayDuration'],
      createdAt: DateTime.parse(json['createdAt']),
      updatedAt: DateTime.parse(json['updatedAt']),
    );
  }
}
