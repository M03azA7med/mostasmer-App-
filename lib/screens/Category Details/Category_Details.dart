//
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../widgets/App_Bar2.dart';
// import 'category_details_controller.dart';
//
// class CategoryDetails extends StatelessWidget {
//   final int categoryId;
//
//   CategoryDetails({super.key, required this.categoryId});
//
//   // Initialize the controller
//   final CategoryDetailsController controller = Get.put(CategoryDetailsController());
//
//   @override
//   Widget build(BuildContext context) {
//     // Fetch data when the page loads
//     controller.fetchCategoryDetails(categoryId);
//
//     // Get screen width and height for responsiveness
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: Obx(() {
//           if (controller.isLoading.value) {
//             return const Center(child: CircularProgressIndicator());
//           }
//
//           if (controller.errorMessage.isNotEmpty) {
//             return Center(child: Text(controller.errorMessage.value));
//           }
//
//           final category = controller.category.value;
//
//           return Column(
//             children: [
//               AppBar2(PageName: category.name), // Dynamic AppBar
//
//               // Category Details Container
//               Container(
//                 decoration: const BoxDecoration(color: Color(0xFFF0F2F5)),
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: screenWidth * 0.05, // 5% padding on left and right
//                     vertical: screenHeight * 0.02, // 2% padding top and bottom
//                   ),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.start, // Align to the left
//                     children: [
//                       // Image Section
//                       ClipRRect(
//                         borderRadius: BorderRadius.circular(8.0),
//                         child: Image.network(
//                           category.imageUrl,
//                           width: screenWidth * 0.3, // 30% of screen width for the image
//                           height: screenHeight * 0.15, // 15% of screen height for the image
//                           fit: BoxFit.cover,
//                           errorBuilder: (context, error, stackTrace) =>
//                           const Icon(Icons.error, size: 50),
//                         ),
//                       ),
//                       SizedBox(width: screenWidth * 0.05), // Add space between image and text
//
//                       // Flexible Column for Text and Button
//                       Flexible(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Padding(
//                                   padding: EdgeInsets.only(bottom: screenHeight * 0.01),
//                                   child: Text(
//                                     category.name,
//                                     style: TextStyle(
//                                       fontSize: screenWidth * 0.05, // 5% of screen width for text size
//                                     ),
//                                   ),
//                                 ),
//                                 Padding(
//                                   padding: EdgeInsets.only(bottom: screenHeight * 0.01),
//                                   child: Text(
//                                     'Up to ${category.id}', // You can change this to the actual discount if available
//                                     style: TextStyle(
//                                       color: const Color(0xFFEF1A2D),
//                                       fontSize: screenWidth * 0.04, // 4% of screen width for text size
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             Material(
//                               elevation: 5.0,
//                               borderRadius: BorderRadius.circular(50),
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(50),
//                                   color: Colors.white,
//                                 ),
//                                 child: MaterialButton(
//                                   onPressed: () {},
//                                   child: Text(
//                                     'Shop now',
//                                     style: TextStyle(
//                                       color: const Color(0xFF2AB09C),
//                                       fontSize: screenWidth * 0.04, // Adjust text size
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           );
//         }),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/App_Bar2.dart';
import '../../widgets/filter_result_card.dart';
import 'category_details_controller.dart';

class CategoryDetails extends StatelessWidget {
  final int categoryId;
  final String name;

  const CategoryDetails({Key? key, required this.categoryId, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final OffersController offersController = Get.put(OffersController());

    // Fetch offers when the page is loaded
    offersController.fetchOffers(categoryId);

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Obx(() {
                if (offersController.isLoading.value) {
                  return const Center(child: CircularProgressIndicator());
                } else if (offersController.isError.value) {
                  return const Center(child: Text("Error loading offers"));
                } else if (offersController.offers.isEmpty) {
                  return const Center(child: Text("No offers available"));
                } else {
                  return ListView.builder(
                    itemCount: offersController.offers.length,
                    itemBuilder: (context, index) {
                      final offer = offersController.offers[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
                          leading: FiltterCard(
                            name: offer.brand.name,
                            image: offer.brand.logo,
                            ratio: offer.ratio.toString(),
                          ),
                          trailing: Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(50),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Text(
                                  'Shop now',
                                  style: TextStyle(
                                    color: const Color(0xFF2AB09C),
                                    // fontSize: screenWidth * 0.04, // Adjust text size
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }
              }),
            ),
            Container(
              height: 60,
              color: Colors.white,
              child: AppBar2(PageName: name),
            ),
          ],
        ),
      ),
    );
  }
}
