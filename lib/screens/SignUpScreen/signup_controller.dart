import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mostasmer/routes/app_routes.dart';

import '../../utils/api_constant.dart';

class SignupController extends GetxController {
  var isLoading = false.obs;

  Future<void> signup({
    required String fullName,
    required String email,
    required String phone,
    required String password,
  }) async {
    isLoading.value = true;
    const url = AppConstants.SignUp;

    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'fullname': fullName,
          'email': email,
          'phone': "+2$phone",
          'password': password,
        }),
      );

      isLoading.value = false;

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        // Navigate to login screen after successful signup
       Get.offAllNamed(AppRoutes.HomePage);
        Get.snackbar("Success", "Account created successfully!",
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.green, colorText: Colors.white);
        print(data['token']);
      } else {
        final error = jsonDecode(response.body)['message'];
        Get.snackbar("Error", error,
            snackPosition: SnackPosition.BOTTOM,
            backgroundColor: Colors.red, colorText: Colors.white);
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("Error", "Something went wrong!",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }
}
