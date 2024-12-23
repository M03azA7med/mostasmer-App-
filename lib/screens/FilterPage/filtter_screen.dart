import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostasmer/widgets/brand_card.dart';

import '../../widgets/App_Bar2.dart';
import '../../widgets/App_Button.dart';
import '../../widgets/filter_result_card.dart';
import 'filtter_controller.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final OfferController offerController = Get.find(); // GetX controller
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 70),
              child: Obx(() {
                // Loading state
                if (offerController.isLoading.value) {
                  return Center(child: CircularProgressIndicator());
                }

                // Empty state
                if (offerController.offers.isEmpty) {
                  return Center(child: Text('No offers found.'));
                }

                // Offers list using Column
                return SingleChildScrollView(
                  child: Column(
                    children: offerController.offers.map((offer) {
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
                                    fontSize: screenWidth * 0.04, // Adjust text size
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                );
              }),
            ),
            Container(
              height: 60,
              color: Colors.white,
              child: const AppBar2(PageName: 'Search Results'),
            ),
          ],
        ),
      ),
    );
  }
}
