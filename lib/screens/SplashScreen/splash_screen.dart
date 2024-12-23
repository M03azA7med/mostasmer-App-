import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../routes/app_routes.dart';
import '../Profile/user_controller.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  final UserController _controller2=Get.put(UserController());

    Future<void> _checkToken() async {
      final prefs = await SharedPreferences.getInstance();
      final token = prefs.getString('token');
      // Navigate based on token availability
      if (token == null) {
        Get.offAllNamed(AppRoutes.onBoarding);// Navigate to Login if no token
        print(token);
      } else {
        _controller2.fetchUserData(token);
        Get.offAllNamed(AppRoutes.HomePage); // Navigate to HomePage if token exists
      }
    }
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _controller.forward();
    Timer(const Duration(seconds: 3), () {
      _checkToken();
    });
    // _checkToken();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ScaleTransition(
          scale: _animation,
          child: Image.asset('assets/Splash.png'),
        ),
      ),
    );
  }
}
