import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mostasmer/widgets/App_Button.dart';

import '../../widgets/App_Bar2.dart';

class GiftsPage extends StatefulWidget {
  GiftsPage({super.key});

  @override
  State<GiftsPage> createState() => _GiftsPageState();
}

class _GiftsPageState extends State<GiftsPage> {
  TextEditingController Text1 = TextEditingController();

  TextEditingController Text2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              // AppBar
              Container(
                color: Colors.white,
                child: const AppBar2(PageName: 'Gifts'),
              ),

              // ButtonsTabBar
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ButtonsTabBar(
                    decoration: BoxDecoration(
                      color: const Color(0xFF2AB09C),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.05), // Responsive padding
                    unselectedBackgroundColor: Colors.white,
                    unselectedLabelStyle: const TextStyle(color: Color(0xFF2AB09C)),
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    tabs: const [
                      Tab(text: "Send Gifts"),
                      Tab(text: "Received Gifts"),
                    ],
                  ),
                ),
              ),

              // TabBarView
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    // First Tab Content
                    _buildGiftTab(context, 'Cancel Gift'),

                    // Second Tab Content
                    _buildGiftTab(context, 'Copy'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGiftTab(BuildContext context, String buttonText) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                // Row for header (text and date)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Digital card to Hassan Ahmed',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Text('13/10/2024'),
                  ],
                ),
                const SizedBox(height: 20),

                // Row for content and image
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Responsive Text Section
                    SizedBox(
                      width: screenWidth * 0.4, // 40% of screen width
                      child: RichText(
                        text: const TextSpan(
                          text: 'You sent a digital card to Hassan Ahmed Card value 50 SR Card status ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                          children: [
                            TextSpan(
                              text: 'Not USED',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Responsive Image Section
                    Flexible(
                      child: Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(12),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 1,
                                blurRadius: 6,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.asset(
                                      'assets/image 10.png',
                                      // width: screenWidth * 0.4, // Responsive image width
                                      // height: 120, // Fixed height
                                      // fit: BoxFit.contain,
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    left: 10,
                                    child: Image.asset(
                                      'assets/Icon.png',
                                      // width: 30,
                                      // height: 30,
                                    ),
                                  ),
                                  Positioned(
                                    top: 15,
                                    right: 10,
                                    child: Image.asset(
                                      'assets/Group 1000006021.png',
                                      // width: 30,
                                      // height: 30,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                '1234  5678 1234 5678',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Custom Button
                CustomButton(
                  text: buttonText,
                  onPressed: () {
                    // Add your button action here
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
