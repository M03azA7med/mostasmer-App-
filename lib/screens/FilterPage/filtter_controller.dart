// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// import 'filtter_model.dart';
//
// class OfferController extends GetxController {
//   var offers = <Offer>[].obs;
//   var isLoading = false.obs;
//
//   // Method to fetch offers based on selected filters
//   Future<void> fetchOffers(int brandId, int categoryId, double minRatio, double maxRatio) async {
//     isLoading.value = true;
//
//     final url = Uri.parse(
//         'http://78.47.84.62:3100/api/offers?validTo[gte]=2024-12-12&validFrom[lte]=2024-12-15&fields=id,ratio,validFrom,validTo,brandId,category=id-name,brand=logo-name&sort=-ratio&brandId=$brandId&categoryId=$categoryId&ratio[gt]=$minRatio&ratio[lt]=$maxRatio');
//
//     try {
//       final response = await http.get(url);
//
//       if (response.statusCode == 200) {
//         final data = json.decode(response.body);
//         List<dynamic> offerData = data['offers'];
//         offers.value = offerData.map((offer) => Offer.fromJson(offer)).toList();
//       } else {
//         throw Exception('Failed to load offers');
//       }
//     } catch (e) {
//       print("Error fetching offers: $e");
//     } finally {
//       isLoading.value = false;
//     }
//   }
// }



import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'filtter_model.dart';

class OfferController extends GetxController {
  var offers = <Offer>[].obs;
  var isLoading = false.obs;

  // Method to fetch offers based on selected filters
  Future<void> fetchOffers({
    int? brandId,
    int? categoryId,
    double? minRatio,
    double? maxRatio,
  }) async {
    isLoading.value = true;

    // Base URL
    String url = 'http://78.47.84.62:3100/api/offers?validTo[gte]=2024-12-12&validFrom[lte]=2024-12-15&fields=id,ratio,validFrom,validTo,brandId,category=id-name,brand=logo-name&sort=-ratio';

    // Add brandId filter if available
    if (brandId != null) {
      url += '&brandId=$brandId';
    }

    // Add categoryId filter if available
    if (categoryId != null) {
      url += '&categoryId=$categoryId';
    }

    // Add ratio filters if available
    if (minRatio != null && maxRatio != null) {
      url += '&ratio[gt]=$minRatio&ratio[lt]=$maxRatio';
    }

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        List<dynamic> offerData = data['offers'];
        offers.value = offerData.map((offer) => Offer.fromJson(offer)).toList();
      } else {
        throw Exception('Failed to load offers');
      }
    } catch (e) {
      print("Error fetching offers: $e");
    } finally {
      isLoading.value = false;
    }
  }
}
