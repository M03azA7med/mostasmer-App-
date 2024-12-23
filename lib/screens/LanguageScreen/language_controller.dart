import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:easy_localization/easy_localization.dart';

class LanguageController extends GetxController {
  var selectedLanguage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    selectedLanguage.value = Get.locale?.languageCode ?? 'en';
  }

  void changeLanguage(String languageCode) {
    selectedLanguage.value = languageCode;
    Get.updateLocale(Locale(languageCode));
    EasyLocalization.of(Get.context!)?.setLocale(Locale(languageCode)); // Sync EasyLocalization
  }
}
