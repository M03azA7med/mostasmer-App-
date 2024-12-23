import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

import '../../routes/app_routes.dart';
import '../../utils/api_constant.dart';

class ForgotPasswordController extends GetxController {
  var isLoading = false.obs;

  Future<void> reset(String email) async {

    if (email.isEmpty ) {
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
      final response = await http.patch(
        Uri.parse(AppConstants.forget),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'phone': email,}),
      );

      isLoading.value = false;

      if (response.statusCode == 200) {
        // final data = jsonDecode(response.body);
        final message = jsonDecode(response.body)['message'] ?? 'OTP Send ';
        Get.snackbar(
          'Login Error',
          message,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        Get.toNamed(AppRoutes.OtpPage);
        AppConstants.Email=email;
        print('------email $email');
        // Save token to SharedPreferences

        // Navigate to HomePage

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
