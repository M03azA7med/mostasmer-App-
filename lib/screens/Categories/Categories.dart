import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostasmer/widgets/App_Bar.dart';
import 'package:mostasmer/widgets/Category_Card.dart';
import '../Category Details/Category_Details.dart';
import 'Category_controller.dart';
import 'package:mostasmer/screens/HomePage/search_controller.dart' as custom_search_controller; // Prefix added

class Categories extends StatelessWidget {
  Categories({super.key});

  // Initialize CategoryController
  final CategoryController categoryController = Get.put(CategoryController());
  final custom_search_controller.SearchController searchController = Get.put(custom_search_controller.SearchController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 160,left: 10,right: 10,bottom: 10),
              child: Obx(() {
                if (categoryController.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                } else if (categoryController.categoryList.isEmpty) {
                  return const Center(child: Text("No categories available"));
                } else {
                  return GridView.builder(
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Number of columns in the grid
                      // crossAxisSpacing: 9,
                      // mainAxisSpacing: 8.0,
                      // childAspectRatio: 1
                    ),
                    itemCount: categoryController.categoryList.length,
                    itemBuilder: (context, index) {
                      final category =
                      categoryController.categoryList[index];
                      return InkWell(
                        onTap: () {
                          // Navigate to CategoryDetails
                          Get.to(() => CategoryDetails(categoryId: category.id,name: category.name,));

                        },

                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.circular(10),
                                ),
                                child:Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CategoryCard(
                                      image: category.imageUrl,
                                      Name: category.name,
                                    ),
                                  ],
                                ),
                              ),
                            ),


                      );
                    },
                  );
                }
              }),
            ),
            Stack(
              children: [
                AppBar_com(),
                // Positioned widget to place the TextField at the bottom

                Positioned(
                  bottom: 0, // Position it at the bottom of the screen
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 50.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: TextFormField(
                        autofocus: false,
                        obscureText: false,
                        onChanged: (value) {
                          searchController.searchQuery.value = value; // Update the search query
                          searchController.searchBrands(value); // Call the search method on input change
                        },
                        decoration: InputDecoration(
                          hintText: '${tr('search_here')}',
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF939393),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0xFF14181B),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          prefixIcon: const Icon(
                            Icons.search_rounded,
                            size: 25.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),          ],
        ),
      ),
    );
  }
}
