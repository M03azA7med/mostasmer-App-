// import 'package:flutter/material.dart';
//
// import '../../widgets/App_Bar2.dart';
//
// class BrandDetailsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               // Banner Section
//               AppBar2(PageName: 'Amazon'),
//               Stack(
//                 alignment: Alignment.bottomCenter,
//                 children: [
//                   Container(
//                     width: double.infinity,
//                     height: 85,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       image: const DecorationImage(
//                         image: AssetImage('assets/images/image (3).png'), // Replace with your image
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: EdgeInsets.only(top: 10),
//                     child: Image.asset(
//                       'assets/images/image (3).png', // Replace with your logo
//                       height: 80,
//                     ),
//                   ),
//                 ],
//               ),
//
//               // const SizedBox(height: 16),
//
//               // Discounts Section
//               Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text('Up to 13.00% Discount',
//                             style: TextStyle(color: Colors.red, fontSize: 16)),
//                         SizedBox(height: 8),
//                         Text('Up to 11.00% point back',
//                             style: TextStyle(color: Colors.red, fontSize: 16)),
//                       ],
//                     ),
//                     ElevatedButton(
//                       onPressed: () {},
//                       child: const Text('Shop now'),
//                     ),
//                   ],
//                 ),
//               ),
//               // const SizedBox(height: 16),
//
//               // Brand Offers Section
//               Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Card(
//                   child: Padding(
//                     padding: const EdgeInsets.all(16),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text('Brand Offers',
//                             style: TextStyle(
//                                 fontSize: 18, fontWeight: FontWeight.bold)),
//                         const SizedBox(height: 8),
//                         OfferRow('Smart TVs', 'Up to 12%'),
//                         OfferRow('Phones', 'Up to 10%'),
//                         OfferRow('Laptops', 'Up to 10%'),
//                         OfferRow('Smart Watches', 'Up to 7%'),
//                         OfferRow('Home Appliances', 'Up to 5%'),
//                         TextButton(
//                           onPressed: () {},
//                           child: const Text('Show More'),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//
//               // const SizedBox(height: 16),
//
//               // Hot Deals Section
//               Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Card(
//                   child: Padding(
//                     padding: const EdgeInsets.all(16),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         const Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text('10% off with bebassata QNB cards'),
//                             Text('Up to 14%', style: TextStyle(color: Colors.red)),
//                             Text('valid to 20/11/2024'),
//                           ],
//                         ),
//                         TextButton(
//                           onPressed: () {},
//                           child: const Text('Get Coupon'),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//
//               // const SizedBox(height: 16),
//
//               // Points Back Section
//               Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Card(
//                   child: Padding(
//                     padding: const EdgeInsets.all(16),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text('Points Back',
//                             style: TextStyle(
//                                 fontSize: 18, fontWeight: FontWeight.bold)),
//                         const SizedBox(height: 16),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             PointsCircle('5%', 'Basic'),
//                             PointsCircle('7%', 'Standard'),
//                             PointsCircle('10%', 'VIP'),
//                           ],
//                         ),
//                         const SizedBox(height: 16),
//                         const Divider(),
//                         const Text('Special Offers Extra Points Back'),
//                         OfferRow('Basic customer', 'Extra 3% Points Back'),
//                         OfferRow('Standard customer', 'Extra 4% Points Back'),
//                         OfferRow('VIP customer', 'Extra 5% Points Back'),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//
//               // const SizedBox(height: 16),
//
//               // Custom Offers Section
//               Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Card(
//                   child: Padding(
//                     padding: const EdgeInsets.all(16),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text('Custom Offers',
//                             style: TextStyle(
//                                 fontSize: 18, fontWeight: FontWeight.bold)),
//                         OfferRow('My Customer', 'Extra 1% Points Back'),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//
//               // const SizedBox(height: 16),
//
//               // About Samsung Section
//               Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Card(
//                   child: Padding(
//                     padding: const EdgeInsets.all(16),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Text('About Samsung',
//                             style: TextStyle(
//                                 fontSize: 18, fontWeight: FontWeight.bold)),
//                         const SizedBox(height: 8),
//                         const Text(
//                           'Samsung was founded as a grocery trading store on March 1, 1938, by Lee Byung-Chull. He started his business in Taegu, Korea, trading noodles and other goods...',
//                         ),
//                         TextButton(
//                           onPressed: () {},
//                           child: const Text('Show More'),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//
//               // const SizedBox(height: 16),
//
//               // Notifications Section
//               Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     const Text('Show notification',
//                         style: TextStyle(fontSize: 16)),
//                     Switch(value: true, onChanged: (value) {}),
//                   ],
//                 ),
//               ),
//
//               // const SizedBox(height: 16),
//
//               // Social Media Links Section
//               Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     IconButton(
//                       icon: const Icon(Icons.facebook),
//                       onPressed: () {},
//                     ),
//                     IconButton(
//                       icon: const Icon(Icons.book),
//                       onPressed: () {},
//                     ),
//                     IconButton(
//                       icon: const Icon(Icons.link),
//                       onPressed: () {},
//                     ),
//                     IconButton(
//                       icon: const Icon(Icons.youtube_searched_for),
//                       onPressed: () {},
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class OfferRow extends StatelessWidget {
//   final String title;
//   final String offer;
//
//   OfferRow(this.title, this.offer);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 8.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(title),
//           Text(offer, style: const TextStyle(color: Colors.red)),
//         ],
//       ),
//     );
//   }
// }
//
// class PointsCircle extends StatelessWidget {
//   final String points;
//   final String label;
//
//   PointsCircle(this.points, this.label);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         CircleAvatar(
//           radius: 30,
//           backgroundColor: Colors.blue,
//           child: Text(points,
//               style: const TextStyle(color: Colors.white, fontSize: 16)),
//         ),
//         const SizedBox(height: 8),
//         Text(label),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../widgets/App_Bar2.dart';
// import '../Brands/Brand_model.dart';
//
// class BrandDetailsPage extends StatelessWidget {
//   const BrandDetailsPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // Get the brand data from arguments
//     final Brand brand = Get.arguments;
//
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               // Banner Section with AppBar
//               Container(
//                   color: Colors.white,
//                   child: AppBar2(PageName: brand.name)), // Brand name as title
//               Stack(
//                 alignment: Alignment.bottomCenter,
//                 children: [
//                   Container(
//                     width: double.infinity,
//                     height: MediaQuery.of(context).size.height * 0.09,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(8),
//                       image: DecorationImage(
//                         image: NetworkImage(brand.cover ??
//                             'https://via.placeholder.com/400x200'), // Use brand cover image
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 30),
//                     child: brand.logo != null
//                         ? Image.network(
//                             brand.logo!,
//                             height: MediaQuery.of(context).size.height * 0.06,
//                           )
//                         : const Icon(Icons.image, size: 80), // Logo placeholder
//                   ),
//                 ],
//               ),
//
//               // Discounts Section
//               Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             IconButton(
//                               onPressed: () {},
//                               icon: Icon(Icons.arrow_upward_outlined),
//                               color: Colors.red,
//                               iconSize: 18,
//                             ),
//                             Text('Up to ${brand.upto?.ratio ?? 0}% Discount',
//                                 style: const TextStyle(
//                                     color: Colors.red,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold)),
//                           ],
//                         ),
//
//                         Row(
//                           children: [
//                             IconButton(
//                               onPressed: () {},
//                               icon: Icon(Icons.arrow_upward_outlined),
//                               color: Colors.red,
//                               iconSize: 18,
//                             ),
//                             Text('Up 11.00% point back',
//                                 style: const TextStyle(
//                                     color: Colors.red,
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.bold)),
//                           ],
//                         ),
//                       ],
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Placeholder for shop action
//                       },
//                       child: const Text(
//                         'Shop now',
//                         style: TextStyle(
//                           color: Color(0xFF2AB09C),
//                           decoration: TextDecoration.underline,
//                           decorationColor: Color(0xFF2AB09C),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               //
//               // // About Section
//               // Padding(
//               //   padding: const EdgeInsets.all(12.0),
//               //   child: Card(
//               //     child: Padding(
//               //       padding: const EdgeInsets.all(16),
//               //       child: Column(
//               //         crossAxisAlignment: CrossAxisAlignment.start,
//               //         children: [
//               //           const Text('About Brand',
//               //               style: TextStyle(
//               //                   fontSize: 18, fontWeight: FontWeight.bold)),
//               //           const SizedBox(height: 8),
//               //           Text(
//               //             brand.about ??
//               //                 'No details provided for this brand.', // About the brand
//               //             style: const TextStyle(fontSize: 14),
//               //           ),
//               //         ],
//               //       ),
//               //     ),
//               //   ),
//               // ),
//               // // Contact Information Section
//               // Padding(
//               //   padding: const EdgeInsets.all(12.0),
//               //   child: Card(
//               //     child: Padding(
//               //       padding: const EdgeInsets.all(16),
//               //       child: Column(
//               //         crossAxisAlignment: CrossAxisAlignment.start,
//               //         children: [
//               //           const Text('Contact Information',
//               //               style: TextStyle(
//               //                   fontSize: 18, fontWeight: FontWeight.bold)),
//               //           const SizedBox(height: 8),
//               //           Text('Phone: ${brand.phone ?? "N/A"}'),
//               //           Text('Email: ${brand.email ?? "N/A"}'),
//               //           Text('Address: ${brand.address ?? "N/A"}'),
//               //           Text('Website: ${brand.url ?? "N/A"}'),
//               //         ],
//               //       ),
//               //     ),
//               //   ),
//               // ),
//               // // Points Back Section
//               // if (brand.upto != null)
//               //   Padding(
//               //     padding: const EdgeInsets.all(12.0),
//               //     child: Card(
//               //       child: Padding(
//               //         padding: const EdgeInsets.all(16),
//               //         child: Column(
//               //           crossAxisAlignment: CrossAxisAlignment.start,
//               //           children: [
//               //             const Text('Points Back',
//               //                 style: TextStyle(
//               //                     fontSize: 18, fontWeight: FontWeight.bold)),
//               //             const SizedBox(height: 8),
//               //             Text('Up to ${brand.upto?.ratio}% Points Back'),
//               //             Text(
//               //                 'Valid From: ${brand.upto?.validFrom} - To: ${brand.upto?.validTo}'),
//               //           ],
//               //         ),
//               //       ),
//               //     ),
//               //   ),
//               // // Social Media Links Section (Optional Example)
//               // Padding(
//               //   padding: const EdgeInsets.all(12.0),
//               //   child: Row(
//               //     mainAxisAlignment: MainAxisAlignment.center,
//               //     children: [
//               //       IconButton(
//               //         icon: const Icon(Icons.link),
//               //         onPressed: () {
//               //           // Placeholder for link actions
//               //         },
//               //       ),
//               //       IconButton(
//               //         icon: const Icon(Icons.email),
//               //         onPressed: () {
//               //           // Placeholder for email
//               //         },
//               //       ),
//               //     ],
//               //   ),
//               // ),
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   "Brand Offers",
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(15)
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Smart TVs',
//                               style: TextStyle(
//                                 fontSize: 16,
//                               ),
//                             ),
//                             Text(
//                               'Up to 12%',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.red,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 10,),
//                         Container(
//                           color: Color(0XFFF0F2F5),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 'Phones',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                 ),
//                               ),
//                               Text(
//                                 'Up to 12%',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   color: Colors.red,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                         SizedBox(height: 10,),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text(
//                               'Laptops',
//                               style: TextStyle(
//                                 fontSize: 16,
//                               ),
//                             ),
//                             Text(
//                               'Up to 12%',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 color: Colors.red,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: 10,),
//                         Container(
//                           color: Color(0XFFF0F2F5),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 'Smart watches',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                 ),
//                               ),
//                               Text(
//                                 'Up to 12%',
//                                 style: TextStyle(
//                                   fontSize: 16,
//                                   color: Colors.red,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//
//                       ],
//                     ),
//                   ),
//                 ),
//
//                 const SizedBox(height: 8),
//                 const Center(
//                   child: Text(
//                     "Show More",
//                     style: TextStyle(
//                       color: Colors.teal,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../../widgets/follow Us.dart';
import '../Brands/Brand_model.dart';
import 'brand-controller.dart';
import 'package:easy_localization/easy_localization.dart';

class BrandDetailsPage extends StatelessWidget {
  final brandid;
  const BrandDetailsPage({super.key, this.brandid});

  @override
  Widget build(BuildContext context) {
    final Brand brand = Get.arguments;

    DateTime currentDate = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd').format(currentDate);

    final BrandDetailsController controller = Get.put(BrandDetailsController());

    // Fetch offers when the page loads
    controller.fetchOffers(brandid, formattedDate);
    controller.fetchcoupons(brandid,formattedDate);

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // AppBar
              Container(
                color: Colors.white,
                child: AppBar(
                  title: Text(brand.name ?? 'Brand'), // Brand name as title
                ),
              ),

              // Brand Banner
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 35),
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.09,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(
                            brand.cover ?? 'https://via.placeholder.com/400x200',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: brand.logo != null
                        ? Image.network(
                      brand.logo!,
                      height: MediaQuery.of(context).size.height * 0.06,
                    )
                        : const Icon(Icons.image, size: 80),
                  ),
                ],
              ),
              SizedBox(height: 25),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Obx(() {
                        // Check if data is still loading
                        if (controller.isLoading.value) {
                          return Center(child: CircularProgressIndicator());
                        }

                        // If no offers available, show a placeholder message
                        if (controller.offers.isEmpty) {
                          return const Text("No offers available");
                        }

                        // Extract the first ratio from the offers
                        final firstRatio = controller.offers[0]['ratio'];

                        // Return the Row with the dynamic ratio
                        return Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_upward_outlined),
                              color: Colors.red,
                              iconSize: 18,
                            ),
                            Text(
                              'Up $firstRatio% point back', // Display the first ratio dynamically
                              style: const TextStyle(
                                color: Colors.red,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        );
                      }),
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.arrow_upward_outlined),
                            color: Colors.red,
                            iconSize: 18,
                          ),
                          Text('Up 11% point back',
                              style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: ElevatedButton(
                      onPressed: () {
                        // Placeholder for shop action
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Color(0xFF2AB09C),
                        backgroundColor: Colors
                            .white, // Set the text color (foreground color)
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              20.0), // Optional: to round the corners
                        ),
                        elevation: 5,
                      ),
                      child:  Text(
                        '${tr('Shop_now')}',
                        style: TextStyle(
                          color: Color(0xFF2AB09C),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              // Offers Section
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      "${tr('Brand_Offers')}",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Material(
                      elevation: 8, // Add elevation here
                      borderRadius:
                          BorderRadius.circular(20), // Apply border radius
                      shadowColor: Colors.black
                          .withOpacity(0.2), // Optional: Shadow color
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Obx(() {
                          if (controller.isLoading.value) {
                            return Center(child: CircularProgressIndicator());
                          }

                          if (controller.offers.isEmpty) {
                            return const Text("No offers available");
                          }

                          return ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap:
                                true, // Ensures ListView takes only the space it needs
                            itemCount: controller.offers.length,
                            itemBuilder: (context, index) {
                              final offer = controller.offers[index];
                              return Container(
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: index % 2 == 0
                                      ? Colors.white
                                      : Color(0XFFF0F2F5),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      offer['category']['name'],
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    Text(
                                      '${tr('Up_to')} ${offer['ratio']}%',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),

              // Coupons Section
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      "${tr('Hot_Deals')}",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Material(
                      elevation: 8, // Add elevation here
                      borderRadius:
                          BorderRadius.circular(20), // Apply border radius
                      shadowColor: Colors.black
                          .withOpacity(0.2), // Optional: Shadow color
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                        ),
                        child: Obx(() {
                          if (controller.isLoading.value) {
                            return Center(child: CircularProgressIndicator());
                          }
                          if (controller.coupons.isEmpty) {
                            return const Text("No Hot Deals available");
                          }

                          return ListView.builder(
                            shrinkWrap:
                                true, // Ensures ListView takes only the space it needs
                            itemCount: controller.coupons.length,
                            itemBuilder: (context, index) {
                              final coupon = controller.coupons[index];

                              return Container(
                                color: Colors.white,
                                child: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Coupon information (description, discount, valid date)
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(coupon[
                                              'description']), // Show description
                                          Text(
                                            '${tr('Up_to')} ${coupon['ratio']}% ', // Show discount ratio
                                            style: TextStyle(color: Colors.red),
                                          ),
                                          Text(
                                            '${tr('Valid_to')} ${coupon['validTo'].split('T')[0]}', // Show expiration date
                                            style: TextStyle(
                                                color: Color(0xFF2AB09C)),
                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                          height:
                                              10), // Add spacing between the text and button
                                      // Button for the coupon action
                                      ElevatedButton(
                                        onPressed: () {
                                          // Placeholder for shop action
                                        },
                                        style: ElevatedButton.styleFrom(
                                          foregroundColor: Color(0xFF2AB09C),
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                          elevation: 5,
                                        ),
                                        child:  Text(
                                          '${tr('Get_Coupon')}',
                                          style: TextStyle(
                                              color: Color(0xFF2AB09C)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        }),
                      ),
                    ),
                  ],
                ),
              ),
              //about section
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${tr('About')} ${brand.name}',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Material(
                      elevation: 8, // Set the elevation level
                      borderRadius: BorderRadius.circular(20), // Ensure the shadow respects the border radius
                      shadowColor: Colors.black.withOpacity(0.2), // Optional: Customize shadow color
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20), // Border radius for the container
                        ),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                brand.about ?? 'No details provided for this brand.', // About the brand
                                style: const TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
              //Points Back Terms
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('${tr('Points_Back_Terms')} ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                    Material(
                      elevation: 8, // Set the elevation level
                      borderRadius: BorderRadius.circular(20), // Ensure the shadow respects the border radius
                      shadowColor: Colors.black.withOpacity(0.2), // Optional: Customize shadow color
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20), // Border radius for the container
                        ),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 8),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                brand.pointBackTerms ?? 'No details provided for this brand.', // About the brand
                                style: const TextStyle(fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              ),
              // Notifications Section
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                         Text('${tr(
                          'Show_notification'
                        )}',
                            style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold)),

                         Container(
                           width: MediaQuery.of(context).size.width*0.7,
                           child: Text('${tr('Show_notification_message')}',
                              style: TextStyle(fontSize: 16,color: Colors.grey)),
                         ),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                    Switch(value: true, onChanged: (value) {},
                      activeColor: Color(0xFF2AB09C),
                    ),
                  ],
                ),
              ),
              Follow_us(),
              SizedBox(height: 25,),
            ],
          ),
        ),
      ),
    );
  }
}
