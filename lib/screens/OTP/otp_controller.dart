import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
// import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../../routes/app_routes.dart';
import '../../utils/api_constant.dart';

class OtpController extends GetxController {
  var isLoading = false.obs;

  Future<void> checkOtp(String OTP,) async {

    if (OTP.isEmpty ) {
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
    // final prefs = await SharedPreferences.getInstance();

    try {
      final response = await http.patch(
        Uri.parse('http://78.47.84.62:3100/api/user/forget-password/check-otp'),
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({
          'code': OTP,
          'phone':AppConstants.Email
        }),
      );

      isLoading.value = false;

      if (response.statusCode == 200) {
        // final data = jsonDecode(response.body);
        final message = jsonDecode(response.body)['message'] ?? 'OTP Is Checked ';
        Get.snackbar(
          'Login Error',
          message,
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green,
          colorText: Colors.white,
        );
        Get.toNamed(AppRoutes.Resetpassword);

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
