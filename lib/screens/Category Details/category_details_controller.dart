// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// import 'package:mostasmer/screens/Category%20Details/category_details_model.dart';
//
// import '../../utils/api_constant.dart';
//
// class CategoryDetailsController extends GetxController {
//   var isLoading = true.obs;
//   var category = CategoryDetailsModel(id: 0, name: '', imageUrl: '').obs;
//   var errorMessage = ''.obs;
//
//   // Function to fetch category details
//   Future<void> fetchCategoryDetails(int id) async {
//     try {
//       isLoading(true);
//       final response = await http.get(Uri.parse(AppConstants.getCategoryDetails(id)));
//
//
//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         category.value = CategoryDetailsModel.fromJson(data['category']);
//       } else {
//         errorMessage.value = 'Failed to load category details';
//       }
//     } catch (e) {
//       errorMessage.value = 'Error: $e';
//     } finally {
//       isLoading(false);
//     }
//   }
// }


import 'dart:convert';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'category_details_model.dart';

class OffersController extends GetxController {
  var offers = <Offer>[].obs;
  var isLoading = true.obs;
  var isError = false.obs;

  final String apiUrl = "http://78.47.84.62:3100/api/offers";

  Future<void> fetchOffers(int categoryId) async {
    isLoading(true);
    isError(false);
    try {
      final response = await http.get(
        Uri.parse("$apiUrl?fields=id,ratio,brand=id-name-url-logo-about-email-cover,validFrom,validTo,categoryId&categoryId=$categoryId"),
      );

      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        final offersResponse = OffersResponse.fromJson(jsonData);
        offers.value = offersResponse.offers;
      } else {
        isError(true);
      }
    } catch (e) {
      isError(true);
    } finally {
      isLoading(false);
    }
  }
}
