import 'package:get/get.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class BrandDetailsController extends GetxController {
  var isLoading = true.obs;
  var offers = [].obs;
  var coupons = [].obs;

  Future<void> fetchOffers(brandId,validTo) async {
    try {
      isLoading(true);


      final uri = Uri.parse('http://78.47.84.62:3100/api/offers?brandId=$brandId&validTo[gte]=$validTo&validFrom[lte]=$validTo&fields=id,ratio,validFrom,validTo,brandId,category=id-name&sort=-ratio&limit=5');

      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        offers.value = data['offers'];//// Assign offers list
        print(response.body);
      } else {
        Get.snackbar("Error", "Failed to fetch offers: ${response.statusCode}");
      }
    } catch (e) {
      Get.snackbar("Error", "Error fetching offers: $e");
    } finally {
      isLoading(false);
    }
  }
  Future<void> fetchcoupons(brandId,validTo) async {
    try {
      isLoading(true);


      final uri2 = Uri.parse('http://78.47.84.62:3100/api/brand/coupons/$brandId?validFrom[lte]=$validTo&validTo[gte]=$validTo&sort=-ratio');

      final response = await http.get(uri2);

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        coupons.value = data['coupons'];//// Assign offers list
        print(response.body);
      } else {
        Get.snackbar("Error", "Failed to fetch coupons: ${response.statusCode}");
      }
    } catch (e) {
      Get.snackbar("Error", "Error fetching coupons: $e");
    } finally {
      isLoading(false);
    }
  }
}
