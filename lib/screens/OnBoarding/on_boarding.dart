// import 'package:flutter/material.dart';
// import 'package:mostasmer/screens/LanguageScreen/language_screen.dart';
// import 'package:mostasmer/screens/LoginScreen/login_screen.dart';
//
// import '../../widgets/App_Button.dart';
//
//
// class OnboardingScreen extends StatefulWidget {
//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }
//
// class _OnboardingScreenState extends State<OnboardingScreen> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.transparent,
//         actions: [
//           TextButton(
//             onPressed: () {
//               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LanguageSelectionPage()));
//             },
//             child: const Text(
//               "Skip",
//               style: TextStyle(color: Colors.black, fontSize: 16),
//             ),
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           // SizedBox(height: 100,),
//           Expanded(
//             child: PageView(
//               controller: _pageController,
//               onPageChanged: (index) {
//                 setState(() {
//                   _currentPage = index;
//                 });
//                 // if (index == 2) { // Assuming the last page is index 2
//                 //   Future.delayed(Duration(milliseconds: 500), () {
//                 //     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
//                 //   });
//                 // }
//               },
//               children: [
//                 buildOnboardingPage(
//                   image: "assets/onboarding.png",
//                   title: "Earn Points with\n Every Purchase",
//                   description: "Welcome to Mostasmer! Earn\n points with every purchase and \nuse them to shop again for free!",
//                   buttonText: "Next",
//                   onPressed: () => _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.ease),
//                 ),
//                 buildOnboardingPage(
//                   image: "assets/onboarding.png",
//                   title: "Redeem Points on Your \nNext Order",
//                   description: "Join Mostasmer today—where \nevery purchase earns you points\n to spend on your next order.",
//                   buttonText: "Next",
//                   onPressed: () => _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.ease),
//                 ),
//                 buildOnboardingPage(
//                   image: "assets/onboarding.png",
//                   title: "Shop, Earn, and Redeem!",
//                   description: "Shop, earn, and redeem! With\n Mostasmer, your points are your\n key to even more shopping.",
//                   buttonText: "Next",
//                   onPressed: () {
//                     Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LanguageSelectionPage()));
//                   },
//                 ),
//
//               ],
//             ),
//
//           ),
//
//           const SizedBox(height: 20),
//         ],
//       ),
//     );
//   }
//
//   Widget buildOnboardingPage({
//     required String image,
//     required String title,
//     required String description,
//     required String buttonText,
//     required VoidCallback onPressed,
//   }) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Image.asset(image,width: 120,height: 190,),
//         const SizedBox(height: 20),
//         Text(
//           title,
//           style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           textAlign: TextAlign.center,
//         ),
//         const SizedBox(height: 10),
//         Text(
//           description,
//           style: const TextStyle(fontSize: 20, color: Colors.black),
//           textAlign: TextAlign.center,
//         ),
//         const SizedBox(height: 30),
//         CustomButton(
//           text: buttonText,
//           onPressed: onPressed,
//         ),
//         const SizedBox(height: 50),
//
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: List.generate(3, (index) => buildDot(index)),
//         ),
//       ],
//     );
//   }
//
//   Widget buildDot(int index) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 300),
//       margin: const EdgeInsets.symmetric(horizontal: 5),
//       height: 10,
//       width: _currentPage == index ? 30 : 10,
//       decoration: BoxDecoration(
//         color: _currentPage == index ? Colors.black : Colors.grey,
//         borderRadius: BorderRadius.circular(5),
//       ),
//     );
//   }
// }
//
//

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import '../../controllers/onboarding_controller.dart';
import '../../routes/app_routes.dart';
import '../../widgets/App_Button.dart';
import 'OnboardingService.dart';
import 'on_boarding-controller.dart';

class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final onboardingController = Get.put(OnboardingController(OnboardingService()));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: () => Get.toNamed(AppRoutes.SelectionPage),
            child: const Text(
              "Skip",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
        ],
      ),
      body: Obx(() {
        if (onboardingController.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (onboardingController.onboardingList.isEmpty) {
          return const Center(child: Text("No onboarding data available."));
        }

        return Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: onboardingController.onboardingList.length,
                onPageChanged: (index) {
                  onboardingController.currentPage.value = index;
                },
                itemBuilder: (context, index) {
                  final item = onboardingController.onboardingList[index];
                  return buildOnboardingPage(
                    image: item.imageUrl,
                    title: item.title,
                    description: item.content,
                    buttonText: index == onboardingController.onboardingList.length - 1
                        ? "Get Started"
                        : "Next",
                    onPressed: () {
                      if (index == onboardingController.onboardingList.length - 1) {
                        Get.toNamed(AppRoutes.SelectionPage);
                      } else {
                        onboardingController.nextPage(_pageController);
                      }
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                onboardingController.onboardingList.length,
                    (index) => buildDot(index, onboardingController.currentPage.value),
              ),
            ),
            const SizedBox(height: 20),
          ],
        );
      }),
    );
  }

  Widget buildOnboardingPage({
    required String image,
    required String title,
    required String description,
    required String buttonText,
    required VoidCallback onPressed,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(image, width: 120, height: 190),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(fontSize: 20, color: Colors.black),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 30),
        CustomButton(
          text: buttonText,
          onPressed: onPressed,
        ),
        const SizedBox(height: 50),
      ],
    );
  }

  Widget buildDot(int index, int currentPage) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 10,
      width: currentPage == index ? 30 : 10,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.black : Colors.grey,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}

