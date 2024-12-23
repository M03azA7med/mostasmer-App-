class UserModel {
  String? id;
  String? email;
  String? fullname;
  String? phone;
  String? qr;
  String? imageUrl;
  String? lang;
  bool? isActive;
  bool? isConfirmed;
  bool? isDeleted;
  String? role;

  UserModel({
    this.id,
    this.email,
    this.fullname,
    this.phone,
    this.qr,
    this.imageUrl,
    this.lang,
    this.isActive,
    this.isConfirmed,
    this.isDeleted,
    this.role,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      email: json['email'],
      fullname: json['fullname'],
      phone: json['phone'],
      qr: json['qr'],
      imageUrl: json['imageUrl'],
      lang: json['lang'],
      isActive: json['isActive'],
      isConfirmed: json['isConfirmed'],
      isDeleted: json['isDeleted'],
      role: json['role'],
    );
  }
}
