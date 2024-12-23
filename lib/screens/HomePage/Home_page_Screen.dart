// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:mostasmer/widgets/App_Bar.dart';
// import 'package:mostasmer/widgets/Category_Card.dart';
// import 'package:mostasmer/widgets/brand_card.dart';
//
// import '../Brand Details/brand_details.dart';
// import '../Brands/Brands.dart';
// import '../Categories/Categories.dart';
// import '../Category Details/Category_Details.dart';
//
//
// class HomePageScreen extends StatefulWidget {
//   const HomePageScreen({super.key});
//
//   @override
//   _HomePageScreenState createState() => _HomePageScreenState();
// }
//
// class _HomePageScreenState extends State<HomePageScreen> {
//   @override
//   void initState() {
//     super.initState();
//     // Show the popup as soon as the home page is loaded
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       _showPopup(context);
//     });
//   }
//
//   // Function to show the popup with an image and close button
//   void _showPopup(BuildContext context) {
//     showDialog(
//       context: context,
//       barrierDismissible: false, // Prevent closing the popup by tapping outside
//       builder: (BuildContext context) {
//         return Dialog(
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15),
//           ),
//           child: Stack(
//             clipBehavior:
//                 Clip.none, // Allow the close button to be outside the dialog
//             children: [
//               // The image inside the dialog
//               Container(
//                 child: Center(child: Image.asset('assets/ads.png')),
//                 // width: 275,
//                 height: 390,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(12),
//                   gradient: const LinearGradient(
//                     begin: Alignment.topLeft, // Starting point of the gradient
//                     end: Alignment.bottomRight, // Ending point of the gradient
//                     colors: [
//                       Color(0xFFFFCE02), // Dark Blue
//                       Color(0xFFFEA402), // Bright Blue
//                     ],
//                   ),
//                 ),
//               ),
//               // The close button at the top right corner
//               Positioned(
//                 top: -10,
//                 right: -10,
//                 child: IconButton(
//                   icon:
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(50)
//                         ),
//                           child: Icon(Icons.close, color: Colors.black)),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               const AppBar_com(),
//               const SizedBox(height: 15),
//               // Adv
//               Container(
//                   width: MediaQuery.of(context).size.width * 0.9,
//                   child:
//                       Image.asset('assets/images/61pIdqNyXzL._SX3000_ 1.png')),
//               const SizedBox(height: 15),
//               // Brand List
//               Container(
//                 color: Colors.white,
//
//                 child:  Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(15.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text('Brand listing',style: TextStyle(
//                             fontSize: 14,
//                             fontWeight: FontWeight.bold
//                           ),),
//                           InkWell(
//                             onTap: (){
//                               Navigator.push(context, MaterialPageRoute(builder: (context) => Brands(),));
//                             },
//                             child: Text('View all',style: TextStyle(
//                               decoration:  TextDecoration.underline,
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold
//                             ),),
//                           ),
//
//                         ],
//                       ),
//                     ),
//                     InkWell(
//                       onTap: (){
//                         Navigator.push(context, MaterialPageRoute(builder: (context) => BrandDetailsPage(),));
//
//                       },
//                       child: Padding(
//                         padding: EdgeInsets.only(left: 15),
//                         // child: BrandCard(image: 'assets/images/image (3).png',Name: 'Amazon',),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               //Category List
//               const SizedBox(height: 15,),
//                Column(
//                 crossAxisAlignment:CrossAxisAlignment.start,
//
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.all(15.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text('Category listing',style: TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold
//                         ),),
//                         InkWell(
//                           onTap: (){
//                             Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));
//
//                           },
//                           child: Text('View all',style: TextStyle(
//                             decoration:  TextDecoration.underline,
//                               fontSize: 14,
//                               fontWeight: FontWeight.bold
//                           ),),
//                         ),
//
//                       ],
//                     ),
//                   ),
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: [
//                         InkWell(
//                           onTap: (){
//                             // Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryDetails(),));
//
//                           },
//                           child: Padding(
//                             padding: EdgeInsets.only(left: 15),
//                             child: CategoryCard(image: 'assets/images/060eca3ba8d0af9b74efa7b588902ea2.gif',Name: 'Electronics',),
//
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 15),
//                           child: CategoryCard(
//                             image:
//                                 'assets/images/11f310ab5d3d29dc9f43e18a40f75732.gif',
//                             Name: 'Phones',
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 15),
//                           child: CategoryCard(
//                             image:
//                                 'assets/images/6ed7d2e96bce23ff1a699c699062a95d.gif',
//                             Name: 'Clothes',
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 15),
//                           child: CategoryCard(
//                             image:
//                                 'assets/images/d83ed32c125299c0aad6dce598e08a51.gif',
//                             Name: 'Bags',
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 15),
//                           child: CategoryCard(
//                             image:
//                                 'assets/images/d19d3c2b4c72d83ddd9a4715b2f8b668.gif',
//                             Name: 'Shoes',
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 15),
//               // Best Selling
//               Container(
//                 color: Colors.white,
//                 child: const Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(15.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             'Best Selling Brands',
//                             style: TextStyle(
//                                 fontSize: 14, fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(left: 15),
//                             // child: BrandCard(
//                             //   image: 'assets/images/image (4).png',
//                             //   Name: 'Carrefour',
//                             // ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 25),
//               // New Arrivals
//               Container(
//                 color: Colors.white,
//                 child: const Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(15.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             'New Arrivals',
//                             style: TextStyle(
//                                 fontSize: 14, fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(left: 15),
//                             // child: BrandCard(
//                             //   image: 'assets/images/image 8.png',
//                             //   Name: 'Adidas shop',
//                             // ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 25),
//               // Latest Offer
//               Container(
//                 color: Colors.white,
//                 child: const Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(15.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             'Latest Offer',
//                             style: TextStyle(
//                                 fontSize: 14, fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(left: 15),
//                             // child: BrandCard(
//                             //   image: 'assets/images/image 8.png',
//                             //   Name: 'Adidas shop',
//                             // ),
//                           ),
//                           Padding(
//                             padding: EdgeInsets.only(left: 15),
//                             // child: BrandCard(
//                             //   image: 'assets/images/image (4).png',
//                             //   Name: 'Carrefour',
//                             // ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 25),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostasmer/widgets/App_Bar.dart';
import 'package:mostasmer/widgets/Category_Card.dart';
import 'package:mostasmer/widgets/brand_card.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import '../../utils/api_constant.dart';
import '../../widgets/Filter.dart';
import '../Brand Details/brand_details.dart';
import '../Brands/Brand_controller.dart';
import '../Brands/Brands.dart';
import '../Categories/Categories.dart';
import '../Categories/Category_controller.dart';
import '../Category Details/Category_Details.dart';
import 'package:mostasmer/screens/HomePage/search_controller.dart' as custom_search_controller;

import '../FilterPage/filtter_controller.dart';
import '../Profile/user_controller.dart';
import 'ads_controller.dart';
import 'ads_model.dart';
import 'ads_screen.dart'; // Prefix added

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  final CategoryController categoryController = Get.put(CategoryController());
  final BrandController brandController = Get.put(BrandController());
  final custom_search_controller.SearchController searchController = Get.put(custom_search_controller.SearchController());
  final UserController _controller2=Get.put(UserController());
  final AdPopUpController controller = Get.put(AdPopUpController());

  Future<void> _checkToken() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    // Navigate based on token availability
    _controller2.fetchUserData(token!);
  }

  @override
  void initState(){
    super.initState();
    Get.put(OfferController());
    // Fetch categories and brands
    categoryController.fetchCategories();
    _checkToken();
    brandController.fetchBrands();
    // Show the popup as soon as the home page is loaded
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // if (controller.randomAd.value != null) {
      //   Future.delayed(Duration.zero, () {
      //     _showPopup(context);  // Show the popup dialog with random ad
      //   });
      // }
      _showPopup(context);
    });

  }

  // Function to show the popup with an image and close button
  void _showPopup(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true, // Prevent closing the popup by tapping outside
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Obx(() {
            // Wait for the ad to be fetched
            if (controller.randomAd.value == null) {
              return const Center(child: CircularProgressIndicator());
            }
            Ad ad = controller.randomAd.value!;
            return Container(
              height: 385,
              width: 275,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                // gradient: const LinearGradient(
                //   begin: Alignment.topLeft,
                //   end: Alignment.bottomRight,
                //   colors: [
                //     Color(0xFFFFCE02),
                //     Color(0xFFFEA402),
                //   ],
                // ),
              ),
              child: Stack(
                children: [
                  SizedBox.expand(
                    child: Image.network(
                      ad.imageUrl,
                      fit: BoxFit.fill,
                      width: 275,
                      height: 385,
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: IconButton(
                      icon: const Icon(Icons.close, color: Colors.white), // Icon to close
                      onPressed: () {
                        // Close the popup or perform any action
                        Navigator.of(context).pop(); // Close the current screen or popup
                      },
                    ),
                  ),
                ],
              ),
            );
          }),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  const AppBar_com(),
                  // Positioned widget to place the TextField at the bottom
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 15,right: 10),
                      child:  InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: const FilterWidget(),
                              );
                            },
                          );
                        },
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                          child: Image.asset(
                            'assets/images/Frame_1000006050.png',
                            height: 53.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                    ),
                  ),

                  Positioned(
                    bottom: 0, // Position it at the bottom of the screen
                    left: -15,
                    right: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 30,left: 30,top: 15,bottom: 15),
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
                            hintText: tr('search_here'),
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

              const SizedBox(height: 15,),
              // Search Bar
              // Search Results Section - Conditionally displayed based on query
              Obx(() {
                if (searchController.searchQuery.value.isNotEmpty) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Obx(() {
                              if (searchController.isLoading.value) {
                                return const Center(child: CircularProgressIndicator());
                              } else if (searchController.searchResults.isEmpty) {
                                return const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "No results found.",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                );
                              } else {
                                return Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: searchController.searchResults.map((brand) {
                                    return InkWell(
                                      onTap: (){
                                        Get.to(
                                              () => BrandDetailsPage(brandid: brand.id),
                                          arguments: brand,
                                        );
                                      },
                                      child: BrandCard(
                                        name: brand.name,
                                        ratio: brand.upto?.ratio.toString() ?? "0",
                                        image: brand.logo,
                                      ),
                                    );
                                  }).toList(),
                                );
                              }
                            }),
                          ],
                        ),
                      ],
                    ),
                  );
                } else {
                  return const SizedBox(); // Empty widget when search query is empty
                }
              }),
              const SizedBox(height: 15),
              // Adv
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.95,
                child: AdView(), // Using AdView widget.
              ),
              const SizedBox(height: 15),
              // Search Results Section - Moved here
              // Brand List
              Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(tr('brand_listing'), style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                          InkWell(
                            onTap: () {
                              Get.to(() => Brands());
                            },
                            child: Text(
                              tr('view_all'),
                              style: const TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Obx(() {
                      if (brandController.isLoading.value) {
                        return Center(child: CircularProgressIndicator());
                      } else if (brandController.brandList.isEmpty) {
                        return Center(child: Text("No brands available"));
                      } else {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: EdgeInsets.only(right: 15),
                            child: Row(
                              children: brandController.brandList.take(5).map((brand) { // Limit to 5 items
                                return Padding(
                                  padding: EdgeInsets.only(left: 15, right: 0),
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.to(
                                            () => BrandDetailsPage(brandid: brand.id),
                                        arguments: brand,
                                      );
                                    },
                                    child: BrandCard(
                                      image: brand.logo,
                                      name: brand.name,
                                      ratio: brand.upto?.ratio.toString() ?? "0",
                                    ),
                                  ),
                                );
                              }).toList(),
                            ),
                          ),
                        );
                      }
                    }),                  ],
                ),
              ),
              // Category List
              const SizedBox(height: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(tr('category_listing'), style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                        InkWell(
                          onTap: () {
                            Get.to(() => Categories());
                          },
                          child: Text(
                            tr('view_all'),
                            style: const TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Obx(() {
                    if (categoryController.isLoading.value) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (categoryController.categoryList.isEmpty) {
                      return const Center(child: Text("No categories available"));
                    } else {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: categoryController.categoryList.map((category) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: GestureDetector(
                                onTap: (){
                                  Get.to(() => CategoryDetails(categoryId: category.id,name: category.name,));
                                },
                                child: CategoryCard(
                                  image: category.imageUrl,
                                  Name: category.name,
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      );
                    }
                  }),
                ],
              ),
              const SizedBox(height: 15),
              // Best Selling
              Container(
                color: Colors.white,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            tr('best_selling_brands'),
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            // child: BrandCard(
                            //   image: 'assets/images/image (4).png',
                            //   Name: 'Carrefour',
                            // ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              // New Arrivals
              Container(
                color: Colors.white,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            tr('new_arrivals'),
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            // child: BrandCard(
                            //   image: 'assets/images/image 8.png',
                            //   Name: 'Adidas shop',
                            // ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              // Latest Offer
              Container(
                color: Colors.white,
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            tr('latest_offer'),
                            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            // child: BrandCard(
                            //   image: 'assets/images/image 8.png',
                            //   Name: 'Adidas shop',
                            // ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            // child: BrandCard(
                            //   image: 'assets/images/image (4).png',
                            //   Name: 'Carrefour',
                            // ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
