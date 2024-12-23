// class CategoryDetailsModel {
//   final int id;
//   final String name;
//   final String imageUrl;
//   final int? parentId;
//
//   CategoryDetailsModel({
//     required this.id,
//     required this.name,
//     required this.imageUrl,
//     this.parentId,
//   });
//
//   factory CategoryDetailsModel.fromJson(Map<String, dynamic> json) {
//     return CategoryDetailsModel(
//       id: json['id'],
//       name: json['name'],
//       imageUrl: json['imageUrl'] ?? '',
//       parentId: json['parentId'],
//     );
//   }
// }



class Brand {
  final int id;
  final String name;
  final String url;
  final String logo;
  final String about;
  final String email;
  final String cover;

  Brand({
    required this.id,
    required this.name,
    required this.url,
    required this.logo,
    required this.about,
    required this.email,
    required this.cover,
  });

  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      id: json['id'],
      name: json['name'],
      url: json['url'],
      logo: json['logo'],
      about: json['about'],
      email: json['email'],
      cover: json['cover'],
    );
  }
}

class Offer {
  final int id;
  final int ratio;
  final Brand brand;
  final DateTime validFrom;
  final DateTime validTo;
  final int categoryId;

  Offer({
    required this.id,
    required this.ratio,
    required this.brand,
    required this.validFrom,
    required this.validTo,
    required this.categoryId,
  });

  factory Offer.fromJson(Map<String, dynamic> json) {
    return Offer(
      id: json['id'],
      ratio: json['ratio'],
      brand: Brand.fromJson(json['brand']),
      validFrom: DateTime.parse(json['validFrom']),
      validTo: DateTime.parse(json['validTo']),
      categoryId: json['categoryId'],
    );
  }
}

class OffersResponse {
  final List<Offer> offers;

  OffersResponse({required this.offers});

  factory OffersResponse.fromJson(Map<String, dynamic> json) {
    return OffersResponse(
      offers: (json['offers'] as List).map((e) => Offer.fromJson(e)).toList(),
    );
  }
}
