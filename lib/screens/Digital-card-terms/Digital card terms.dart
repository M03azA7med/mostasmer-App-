import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostasmer/widgets/App_Bar2.dart';

import '../About_Us/about_app_controller.dart';

class Digitalcardterms extends StatefulWidget {
  const Digitalcardterms({super.key});

  @override
  State<Digitalcardterms> createState() => _DigitalcardtermsState();
}

class _DigitalcardtermsState extends State<Digitalcardterms> {
  final AboutAppController aboutAppController = Get.put(AboutAppController());

  @override
  void initState() {
    super.initState();
    // Fetch data on initialization
    aboutAppController.fetchAboutAppData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                child:  AppBar2(
                  PageName: tr('Digital_card_terms'),
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Obx(() {
                      // Handle null data or loading states
                      if (aboutAppController.aboutApp.value == null) {
                        return const Center(
                          child: Text(
                            'No data available.',
                            style: TextStyle(fontSize: 16, color: Colors.red),
                          ),
                        );
                      }
                      if (aboutAppController.aboutApp.value!.id.isEmpty) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      // Data is loaded, display digital card terms
                      return SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                aboutAppController.getDigital(),
                                style: const TextStyle(fontSize: 16),
                              ),
                              const SizedBox(height: 20),
                              // Add more fields if necessary
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
