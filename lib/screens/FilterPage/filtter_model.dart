class Category {
  final int id;
  final String name;

  Category({required this.id, required this.name});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
    );
  }
}

class Brand {
  final String logo;
  final String name;

  Brand({required this.logo, required this.name});

  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      logo: json['logo'],
      name: json['name'],
    );
  }
}



class Offer {
  final int id;
  final double ratio;
  final String validFrom;
  final String validTo;
  final int brandId;
  final Category category;
  final Brand brand;


  Offer({
    required this.id,
    required this.ratio,
    required this.validFrom,
    required this.validTo,
    required this.brandId,
    required this.category,
    required this.brand,

  });

  factory Offer.fromJson(Map<String, dynamic> json) {
    return Offer(
      id: json['id'],
      ratio: json['ratio'].toDouble(),
      validFrom: json['validFrom'],
      validTo: json['validTo'],
      brandId: json['brandId'],
      category: Category.fromJson(json['category']),
      brand: Brand.fromJson(json['brand']),

    );
  }
}
