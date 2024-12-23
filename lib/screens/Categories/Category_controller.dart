import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../utils/api_constant.dart';
import 'Category_model.dart';

class CategoryController extends GetxController {
  var categoryList = <Category>[].obs; // Observable list
  var isLoading = true.obs;            // Observable loading state

  @override
  void onInit() {
    super.onInit();
    fetchCategories();
  }

  Future<void> fetchCategories() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse(AppConstants.CATEGORY_URL));
      if (response.statusCode == 200) {
        final jsonData = json.decode(response.body);
        List<dynamic> categoriesData = jsonData['categories'];
        categoryList.value =
            categoriesData.map((json) => Category.fromJson(json)).toList();
      } else {
        Get.snackbar("Error", "Failed to load categories");
      }
    } catch (e) {
      Get.snackbar("Error", "Something went wrong: $e");
    } finally {
      isLoading(false);
    }
  }
}
