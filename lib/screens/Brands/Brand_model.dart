class Brand {
  final int id;
  final String name;
  final String phone;
  final String email;
  final String url;
  final String? logo;
  final String? cover;
  final String about;
  final String pointBackTerms;
  final String address;
  final String lat;
  final String lang;
  final String validFrom;
  final String validTo;
  final Upto? upto;

  Brand({
    required this.id,
    required this.name,
    required this.phone,
    required this.email,
    required this.url,
    this.logo,
    this.cover,
    required this.about,
    required this.pointBackTerms,
    required this.address,
    required this.lat,
    required this.lang,
    required this.validFrom,
    required this.validTo,
    this.upto,
  });

  factory Brand.fromJson(Map<String, dynamic> json) {
    return Brand(
      id: json['id'],
      name: json['name'],
      phone: json['phone'],
      email: json['email'],
      url: json['url'],
      logo: json['logo'],
      cover: json['cover'],
      about: json['about'],
      pointBackTerms: json['pointBackTerms'],
      address: json['address'],
      lat: json['lat'],
      lang: json['lang'],
      validFrom: json['validFrom'],
      validTo: json['validTo'],
      upto: json['upto'] != null ? Upto.fromJson(json['upto']) : null,
    );
  }
}

class Upto {
  final int id;
  final int ratio;
  final String validFrom;
  final String validTo;

  Upto({
    required this.id,
    required this.ratio,
    required this.validFrom,
    required this.validTo,
  });

  factory Upto.fromJson(Map<String, dynamic> json) {
    return Upto(
      id: json['id'],
      ratio: json['ratio'],
      validFrom: json['validFrom'],
      validTo: json['validTo'],
    );
  }
}
