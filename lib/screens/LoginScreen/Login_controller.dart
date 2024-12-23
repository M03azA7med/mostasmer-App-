import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
// import 'package:mostasmer/screens/Profile/user_controller.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

import '../../routes/app_routes.dart';
import '../../utils/api_constant.dart';

class LoginController extends GetxController {
  var isLoading = false.obs;
  var isPasswordVisible = false.obs;
  var RememberMy = false.obs;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  // final UserController _controller=Get.put(UserController());

  Future<void> login() async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar(
        'Error',
        'Please fill in all fields',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return;
    }

    isLoading.value = true;

    try {
      final response = await http.post(
        Uri.parse(AppConstants.Login),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'phone': email, 'password': password}),
      );

      isLoading.value = false;

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        // Save token to SharedPreferences
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', data['token']); // Assuming `token` is in the response
        // Navigate to HomePage
        String? token = prefs.getString('token');

        print(prefs.get('token'));
        print(token);
        if (RememberMy == true) {
          Get.offAllNamed(AppRoutes.HomePage);
          // _controller.fetchUserData(token!);
        } else {
          Get.offAllNamed(AppRoutes.HomePage);
          // _controller.fetchUserData(token!);
          passwordController.clear();
          emailController.clear();
        }
      } else {
        final error = jsonDecode(response.body)['message'] ?? 'Login failed';
        Get.snackbar(
          'Login Error',
          error,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent,
          colorText: Colors.white,
        );
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar(
        'Error',
        'Something went wrong. Please try again.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
    }
  }
}
