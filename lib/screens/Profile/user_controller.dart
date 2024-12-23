import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:mostasmer/screens/Profile/user-model.dart';

class UserController extends GetxController {
  // Observables
  var user = UserModel().obs;
  var isLoading = false.obs;

  // API details
  static const String _baseUrl = "http://78.47.84.62:3100/api/verify-me";
  // static const String _authToken =
  //     "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOiJXNW1TQUdqcW12VVhtNEVwaldyMnpnNklSbGwxIiwiaWF0IjoxNzM0NDQ1NzcwfQ.EVKlSztcDtkmurm-sgpAQKJEjl0MryzfwMsHmzg4M9I";

  // Fetch user data from the API
  Future<void> fetchUserData(String Token) async {
    isLoading.value = true;
    try {
      final response = await http.get(
        Uri.parse(_baseUrl),
        headers: {'Authorization': "Bearer $Token"
      },
      );

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        user.value = UserModel.fromJson(data['user']);
        print('User Data ${response.body}');
      } else {
        throw Exception("Failed to verify user: ${response.statusCode}");
      }
    } catch (e) {
      print("Error fetching user data: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
