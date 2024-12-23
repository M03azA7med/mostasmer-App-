import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../utils/api_constant.dart';
import 'Brand_model.dart';

class BrandController extends GetxController {
  var brandList = <Brand>[].obs; // Observable list for brands
  var isLoading = true.obs;      // Loading state

  @override
  void onInit() {
    super.onInit();
    fetchBrands();
  }

  Future<void> fetchBrands() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse(AppConstants.BRANDS_URL));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        List<dynamic> brandsData = jsonData['brands'];
        brandList.value =
            brandsData.map((json) => Brand.fromJson(json)).toList();
      } else {
        Get.snackbar("Error", "Failed to load brands");
      }
    } catch (e) {
      Get.snackbar("Error", "Something went wrong: $e");
    } finally {
      isLoading(false);
    }
  }
}
