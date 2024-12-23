// import 'package:flutter/material.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:mostasmer/screens/SplashScreen/splash_screen.dart';
//
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await EasyLocalization.ensureInitialized();
//   runApp(
//     EasyLocalization(
//       supportedLocales: [Locale('en'), Locale('ar')],
//       path: 'assets/lang',
//       fallbackLocale: Locale('en'),
//       child: MyApp(),
//     ),
//   );
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Mostasmer50',
//       locale: context.locale,
//       supportedLocales: context.supportedLocales,
//       localizationsDelegates: context.localizationDelegates,
//       home: SplashScreen(),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mostasmer/routes/app_routes.dart';
import 'package:mostasmer/screens/Profile/user_controller.dart';

void main() async {
  Get.put(UserController());
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/lang', // Path to translation files
      fallbackLocale: Locale('en'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mostasmer50',
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      fallbackLocale: Locale('en'),
      initialRoute: AppRoutes.splash, // Initial route
      getPages: AppRoutes.routes,     // Route configuration
    );
  }
}
