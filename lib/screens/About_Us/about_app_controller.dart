import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'about_app_model.dart';

class AboutAppController extends GetxController {
  var aboutApp = Rxn<AboutApp>(); // Make aboutApp nullable using Rxn

  // Method to fetch the data from the API
  Future<void> fetchAboutAppData() async {
    try {
      final response =
      await http.get(Uri.parse('http://78.47.84.62:3100/api/app-data'));
      // print('API Request sent to: http://78.47.84.62:3100/api/app-data');

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        // print('API Response received: $data');

        // Access the appData key and then the first item
        if (data.containsKey('appData') && data['appData'].isNotEmpty) {
          var aboutAppData = data['appData'][0]; // Assuming the first item in the list
          aboutApp.value = AboutApp.fromJson(aboutAppData);
          // print('Data parsed successfully: ${aboutApp.value}');
        } else {
          aboutApp.value = null; // No data available
          // print('No data available in the response.');
        }
      } else {
        aboutApp.value = null; // No data available due to failed status code
        // print('Failed to load data. Status code: ${response.statusCode}');
      }
    } catch (e) {
      aboutApp.value = null; // No data available due to error
      // print('Error fetching data: $e');
    }
  }

  // Method to get terms based on current locale
  String getTerms() {
    if (aboutApp.value == null) return 'No data available'; // Handle null case
    if (Get.locale?.languageCode == 'ar') {
      return aboutApp.value!.termsar;
    } else {
      return aboutApp.value!.terms;
    }
  }

  String getMission() {
    if (aboutApp.value == null) return 'No data available'; // Handle null case
    if (Get.locale?.languageCode == 'ar') {
      return aboutApp.value!.missionar;
    } else {
      return aboutApp.value!.mission;
    }
  }

  String getPrivacy() {
    if (aboutApp.value == null) return 'No data available'; // Handle null case
    if (Get.locale?.languageCode == 'ar') {
      return aboutApp.value!.privacy_policyar;
    } else {
      return aboutApp.value!.privacy_policy;
    }
  }

  String getAbout() {
    if (aboutApp.value == null) return 'No data available'; // Handle null case
    if (Get.locale?.languageCode == 'ar') {
      return aboutApp.value!.aboutar;
    } else {
      return aboutApp.value!.about;
    }
  }

  String getDigital() {
    if (aboutApp.value == null) return 'No data available'; // Handle null case
    if (Get.locale?.languageCode == 'ar') {
      return aboutApp.value!.digitalcardar;
    } else {
      return aboutApp.value!.digitalcard;
    }
  }
}
