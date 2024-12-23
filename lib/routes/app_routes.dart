import 'package:get/get.dart';
import 'package:mostasmer/screens/LoginScreen/login_screen.dart';
import 'package:mostasmer/screens/OnBoarding/on_boarding.dart';
import 'package:mostasmer/screens/SignUpScreen/signup_screen.dart';
import 'package:mostasmer/widgets/nav_bar.dart';
import '../screens/Categories/Categories.dart';
import '../screens/LanguageScreen/language_screen.dart';
import '../screens/OTP/otp_screen.dart';
import '../screens/ResetPassword/reset_password.dart';
import '../screens/SplashScreen/splash_screen.dart';
import '../screens/Category Details/Category_Details.dart';

class AppRoutes {
  static const String splash = '/';
  static const String categories = '/categories';
  static const String categoryDetails = '/categoryDetails';
  static const String onBoarding = '/onBoarding';
  static const String HomePage = '/HomePage';
  static const String Login = '/LoginPage';
  static const String SignUp = '/SignUp';
  static const String OtpPage = '/Otppage';
  static const String Resetpassword = '/ResetPassword';
  static const String SelectionPage = '/SelectionPage';


  static final routes = [
    GetPage(
      name: splash,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: categories,
      page: () => Categories(),
    ),
    GetPage(
      name: categoryDetails,
      page: () => CategoryDetails(categoryId: 0,name: '',),
    ),
    GetPage(
      name: onBoarding,
      page: () => OnboardingScreen(),
    ),
    GetPage(
      name: HomePage,
      page: () => MainPage(),
    ),
    GetPage(
      name: Login,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: SignUp,
      page: () => SignupScreen(),
    ),
    GetPage(
      name: OtpPage,
      page: () => OtpScreen(),
    ),
    GetPage(
      name: Resetpassword,
      page: () => ResetPassword(),
    ),
    GetPage(
      name: SelectionPage,
      page: () => LanguageSelectionPage(),
    ),
  ];
}
