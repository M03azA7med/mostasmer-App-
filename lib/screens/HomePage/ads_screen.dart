// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:flutter_swiper_view/flutter_swiper_view.dart';
// import 'ads_controller.dart'; // Make sure this is the correct path to your AdController file.
// import 'package:url_launcher/url_launcher.dart';
//
//
// class AdView extends StatelessWidget {
//   final AdController adController = Get.put(AdController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 200,
//       width: double.infinity,
//       child: Obx(() {
//         if (adController.isLoading.value) {
//           return Center(child: CircularProgressIndicator());
//         }
//         if (adController.ads.isEmpty) {
//           return Center(child: Text('No Ads Available'));
//         }
//         return Swiper(
//           itemBuilder: (BuildContext context, int index) {
//             final ad = adController.ads[index];
//             return GestureDetector(
//               onTap: () async {
//                 if (await canLaunch(ad.targetUrl)) {
//                   await launch(ad.targetUrl);
//                 } else {
//                   Get.snackbar('Error', 'Could not open the URL');
//                 }
//               },
//               child: Container(
//                 margin: EdgeInsets.all(5.0),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10.0),
//                   image: DecorationImage(
//                     image: NetworkImage(ad.imageUrl),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             );
//             // return GestureDetector(
//             //   onTap: () => Get.toNamed(ad.targetUrl), // Navigate to the ad's target URL
//             //   child: Container(
//             //     margin: EdgeInsets.all(5.0),
//             //     decoration: BoxDecoration(
//             //       borderRadius: BorderRadius.circular(10.0),
//             //       image: DecorationImage(
//             //         image: NetworkImage(ad.imageUrl),
//             //         fit: BoxFit.cover,
//             //       ),
//             //     ),
//                 // child: Align(
//                 //   alignment: Alignment.bottomCenter,
//                 //   child: Container(
//                 //     color: Colors.black54,
//                 //     padding: EdgeInsets.all(10),
//                 //     child: Text(
//                 //       ad.title,
//                 //       style: TextStyle(color: Colors.white, fontSize: 16),
//                 //     ),
//                 //   ),
//                 // ),
//               // ),
//             // );
//           },
//           itemCount: adController.ads.length,
//           autoplay: true,
//           autoplayDelay: 10000, // Auto-play delay in milliseconds
//           pagination: SwiperPagination(
//             builder: DotSwiperPaginationBuilder(
//               activeColor: Colors.blue,
//               color: Colors.grey,
//             ),
//           ),
//           // control: SwiperControl(), // Add navigation arrows (optional)
//         );
//       }),
//     );
//   }
// }



import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'ads_controller.dart'; // Make sure this is the correct path to your AdController file.
import 'package:url_launcher/url_launcher.dart';

class AdView extends StatelessWidget {
  final AdController adController = Get.put(AdController());

   AdView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Obx(() {
        if (adController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        if (adController.ads.isEmpty) {
          return const Center(child: Text('No Ads Available'));
        }
        return Swiper(
          itemBuilder: (BuildContext context, int index) {
            final ad = adController.ads[index];
            return GestureDetector(
              onTap: () async {
                if (await canLaunch(ad.targetUrl)) {
                  await launch(ad.targetUrl);
                } else {
                  Get.snackbar('Error', 'Could not open the URL');
                }
              },
              child: Container(
                // margin: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image:ad.imageUrl.isNotEmpty
                        ? NetworkImage(ad.imageUrl) // Display the imageUrl if adType is 'popup'
                        : const AssetImage('assets/ads.png') as ImageProvider, // Fallback image if not 'popup'
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            );
          },
          itemCount: adController.ads.length,
          autoplay: true,
          autoplayDelay: 8000, // Auto-play delay in milliseconds
          pagination: const SwiperPagination(
            builder: DotSwiperPaginationBuilder(
              activeColor: Colors.blue,
              color: Colors.grey,
            ),
          ),
        );
      }),
    );
  }
}
