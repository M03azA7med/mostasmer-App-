import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostasmer/widgets/App_Bar2.dart';

import 'about_app_controller.dart';

class Aboutus extends StatefulWidget {
  Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
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
                  PageName: tr('About_Us'),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
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
                      // Check if data is null
                      if (aboutAppController.aboutApp.value == null) {
                        return const Center(
                          child: Text(
                            'No data available.',
                            style: TextStyle(fontSize: 16, color: Colors.red),
                          ),
                        );
                      }
                      // Check if data is still loading
                      if (aboutAppController.aboutApp.value!.id.isEmpty) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      // Data is loaded, display content
                      return SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                aboutAppController.getAbout(),
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
