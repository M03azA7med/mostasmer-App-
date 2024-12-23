class AppConstants {
  static const String BASE_URL = "http://78.47.84.62:3100/api";
  static const String CATEGORY_URL = "$BASE_URL/category";
  static const String BRANDS_URL = "$BASE_URL/brand";
  static const String Login = "$BASE_URL/auth/login";
  static const String SignUp = "$BASE_URL/auth/signup";
  static const String forget = "http://78.47.84.62:3100/api/user/forget-password";
  static const String checkOTP = "$BASE_URL/api/user/forget-password/check-otp";
  static String getCategoryDetails(int id) => "$CATEGORY_URL/$id";
  static String Email = "";
  static String Code = "";



}
