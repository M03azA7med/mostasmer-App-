class AboutApp {
  String id;
  String terms;
  String termsar;
  String mission;
  String missionar;
  String privacy_policy;
  String privacy_policyar;
  String about;
  String aboutar;
  String digitalcard;
  String digitalcardar;
  int attemptsLogin;
  int durationAttemptsLoginMinutes;
  DateTime createdAt;
  DateTime updatedAt;

  AboutApp({
    required this.id,
    required this.terms,
    required this.termsar,
    required this.mission,
    required this.missionar,
    required this.privacy_policy,
    required this.privacy_policyar,
    required this.about,
    required this.aboutar,
    required this.digitalcard,
    required this.digitalcardar,
    required this.attemptsLogin,
    required this.durationAttemptsLoginMinutes,
    required this.createdAt,
    required this.updatedAt,
  });

  factory AboutApp.fromJson(Map<String, dynamic> json) {
    try {
      return AboutApp(
        id: json['id'] ?? '',
        terms: json['terms'] ?? '',
        termsar: json['termsar'] ?? '',
        mission: json['mission'] ?? '',
        missionar: json['missionar'] ?? '',
        privacy_policy: json['privacy_policy'] ?? '',
        privacy_policyar: json['privacy_policyar'] ?? '',
        about: json['about'] ?? '',
        aboutar: json['aboutar'] ?? '',
        digitalcard: json['digitalcard'] ?? '',
        digitalcardar: json['digitalcardar'] ?? '',
        attemptsLogin: json['attempts_login'] ?? 0,
        durationAttemptsLoginMinutes: json['duration_attempts_login_minutes'] ?? 0,
        createdAt: DateTime.parse(json['createdAt']),
        updatedAt: DateTime.parse(json['updatedAt']),
      );
    } catch (e) {
      print('Error parsing AboutApp: $e');
      throw Exception('Failed to parse AboutApp');
    }
  }
}
