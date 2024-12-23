import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../Brands/Brand_model.dart';

class SearchController extends GetxController {
  var searchQuery = ''.obs;  // Add this line to store the search query
  var searchResults = <Brand>[].obs;
  var isLoading = false.obs;

  // Method to fetch search results from the API
  Future<void> searchBrands(String keyword) async {
    // If the keyword is empty, clear the search results
    if (keyword.isEmpty) {
      searchResults.clear();
      return;
    }

    isLoading.value = true;
    try {
      final response = await http.get(Uri.parse('http://78.47.84.62:3100/api/brand?keyword=$keyword'));

      if (response.statusCode == 200) {
        var data = json.decode(response.body);

        // Check if the response is a Map and contains a key for the list
        if (data is Map<String, dynamic> && data['brands'] is List) {
          // Extract the list of brands from the response
          searchResults.value = (data['brands'] as List)
              .map((e) => Brand.fromJson(e))
              .toList();
        } else if (data is List) {
          // If the response is directly a list of brands
          searchResults.value = data.map((e) => Brand.fromJson(e)).toList();
        } else {
          throw Exception('Unexpected response format');
        }
      } else {
        throw Exception('Failed to load search results');
      }
    } catch (e) {
      print(e);
    } finally {
      isLoading.value = false;
    }
  }
}
//
// class Brand {
//   final String name;
//   final String logo;
//   final Upto? upto;
//
//   Brand({this.upto, required this.name, required this.logo});
//
//   factory Brand.fromJson(Map<String, dynamic> json) {
//     return Brand(
//       upto: json['upto'] != null ? Upto.fromJson(json['upto']) : null,
//       name: json['name'] ?? 'Unknown',
//       logo: json['logo'] ?? 'assets/default_logo.png',  // Default to an empty string if logo is null
//     );
//   }
// }
//
// class Upto {
//   final int id;
//   final int ratio;
//   final String validFrom;
//   final String validTo;
//
//   Upto({
//     required this.id,
//     required this.ratio,
//     required this.validFrom,
//     required this.validTo,
//   });
//
//   factory Upto.fromJson(Map<String, dynamic> json) {
//     return Upto(
//       id: json['id'],
//       ratio: json['ratio'],
//       validFrom: json['validFrom'],
//       validTo: json['validTo'],
//     );
//   }
// }
