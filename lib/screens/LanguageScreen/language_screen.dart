import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostasmer/widgets/App_Button.dart';
import 'package:easy_localization/easy_localization.dart';

import '../LoginScreen/login_screen.dart';
import 'language_controller.dart';

class LanguageSelectionPage extends StatelessWidget {
  final LanguageController _languageController = Get.put(LanguageController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 120),
              Image.asset('assets/onboarding.png', width: 100, height: 160),
              const SizedBox(height: 25),
              Text(
                tr('select_language'),
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 25),

              GestureDetector(
                onTap: () => _languageController.changeLanguage('en'),
                child: Obx(() => Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Radio<String>(
                        activeColor: const Color(0xff2AB09C),
                        value: 'en',
                        groupValue: _languageController.selectedLanguage.value,
                        onChanged: (value) => _languageController.changeLanguage(value!),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        tr('English'),
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff2AB09C)),
                      ),
                    ],
                  ),
                )),
              ),

              GestureDetector(
                onTap: () => _languageController.changeLanguage('ar'),
                child: Obx(() => Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Radio<String>(
                        activeColor: const Color(0xff2AB09C),
                        value: 'ar',
                        groupValue: _languageController.selectedLanguage.value,
                        onChanged: (value) => _languageController.changeLanguage(value!),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        tr('Arabic'),
                        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xff2AB09C)),
                      ),
                    ],
                  ),
                )),
              ),

              const SizedBox(height: 25),
              CustomButton(
                text: tr('Select'),
                onPressed: () {
                  Get.off(() => LoginScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
