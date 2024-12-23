import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'OnboardingService.dart';
import 'on_boarding-model.dart';

class OnboardingController extends GetxController {
  var isLoading = true.obs; // Observable to track loading state
  var onboardingList = <OnboardingModel>[].obs; // Observable list of onboarding items
  var currentPage = 0.obs; // Tracks the current page index

  final OnboardingService _onboardingService;

  OnboardingController(this._onboardingService);

  @override
  void onInit() {
    super.onInit();
    fetchOnboardingData(); // Fetch onboarding data when the controller initializes
  }

  // Fetch onboarding data from the API
  Future<void> fetchOnboardingData() async {
    isLoading(true); // Set loading state to true
    try {
      final data = await _onboardingService.fetchOnboardingData();
      onboardingList.assignAll(data); // Populate the observable list
    } catch (e) {
      Get.snackbar('Error', 'Failed to load onboarding data: $e', snackPosition: SnackPosition.BOTTOM);
    } finally {
      isLoading(false); // Set loading state to false
    }
  }

  // Navigate to the next page
  void nextPage(PageController pageController) {
    if (currentPage.value < onboardingList.length - 1) {
      pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.ease);
    }
  }

  // Skip onboarding and navigate to the LanguageSelectionPage
  void skipOnboarding() {
    Get.offNamed('/languageSelection');
  }
}
