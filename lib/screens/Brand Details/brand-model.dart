// import 'dart:convert';

class Offer {
  final int id;
  final int ratio;
  final DateTime validFrom;
  final DateTime validTo;
  final int brandId;
  final Category category;

  Offer({
    required this.id,
    required this.ratio,
    required this.validFrom,
    required this.validTo,
    required this.brandId,
    required this.category,
  });

  factory Offer.fromJson(Map<String, dynamic> json) {
    return Offer(
      id: json['id'],
      ratio: json['ratio'],
      validFrom: DateTime.parse(json['validFrom']),
      validTo: DateTime.parse(json['validTo']),
      brandId: json['brandId'],
      category: Category.fromJson(json['category']),
    );
  }
}

class Category {
  final int id;
  final String name;

  Category({
    required this.id,
    required this.name,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
    );
  }
}

class OfferResponse {
  final List<Offer> offers;

  OfferResponse({required this.offers});

  factory OfferResponse.fromJson(Map<String, dynamic> json) {
    return OfferResponse(
      offers: (json['offers'] as List)
          .map((offer) => Offer.fromJson(offer))
          .toList(),
    );
  }
}
