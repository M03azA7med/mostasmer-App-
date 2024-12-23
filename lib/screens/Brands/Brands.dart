// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:mostasmer/screens/Brand%20Details/brand_details.dart';
// import 'package:mostasmer/widgets/App_Bar.dart';
// import 'package:mostasmer/widgets/brand_card.dart';
//
// class Brands extends StatelessWidget {
//   const Brands({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return   SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(top: 200, left: 10, right: 10),
//                     child: InkWell(
//                       onTap: (){
//                         Navigator.push(context, MaterialPageRoute(builder: (context) => BrandDetailsPage(),));
//
//                       },
//                         child: BrandCard(
//                             image: 'assets/images/image (3).png',
//                             Name: 'Amazon')),
//                   ),
//                 ],
//               ),
//             ),
//             AppBar_com(),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostasmer/screens/Brand%20Details/brand_details.dart';
import 'package:mostasmer/widgets/App_Bar.dart';
import 'package:mostasmer/screens/HomePage/search_controller.dart' as custom_search_controller; // Prefix added

import '../../widgets/list_brands.dart';
import 'Brand_controller.dart';

class Brands extends StatelessWidget {
  final BrandController brandController = Get.put(BrandController());
  final custom_search_controller.SearchController searchController = Get.put(custom_search_controller.SearchController());

  Brands({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 160,right: 15,left: 15),
              child: Obx(() {
                if (brandController.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                } else if (brandController.brandList.isEmpty) {
                  return const Center(child: Text("No brands available"));
                } else {
                  return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // 2 items per row
                      crossAxisSpacing: 10, // Space between items horizontally
                      // mainAxisSpacing: 10, // Space between items vertically
                      childAspectRatio: 0.9, // Aspect ratio of each item (adjust as needed)
                    ),
                    itemCount: brandController.brandList.length,
                    itemBuilder: (context, index) {
                      final brand = brandController.brandList[index];
                      return InkWell(
                        onTap: () {
                          // Navigate to brand details
                          Get.to(() => BrandDetailsPage(brandid: brand.id,), arguments: brand);
                        },
                        child: BrandListCard(
                          image: brand.logo, // Cover image URL
                          name: brand.name, // Brand name
                          ratio: brand.upto?.ratio.toString() ?? "0", // Dynamic ratio
                        ),
                      );
                    },
                  );
                }
              }),
            ),
            // AppBar_com(),
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
            ),

          ],
        ),
      ),
    );
  }
}
