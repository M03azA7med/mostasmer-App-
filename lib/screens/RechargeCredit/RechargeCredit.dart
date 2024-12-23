import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/App_Bar2.dart';
import '../../widgets/App_Button.dart';
import '../../widgets/Custom_BottomSheet.dart';
import '../../widgets/Custom_TextField.dart';
import '../../widgets/nav_bar.dart';
import '../LoginScreen/login_screen.dart';

class Rechargecredit extends StatelessWidget {
  Rechargecredit({super.key});

  TextEditingController Text1 = TextEditingController();
  TextEditingController Text2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[
              // AppBar
              Container(
                color: Colors.white,
                child: AppBar2(PageName: 'Recharge'),
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
                    contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    unselectedBackgroundColor: Colors.white,
                    unselectedLabelStyle: const TextStyle(color: Color(0xFF2AB09C),),
                    labelStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    tabs: const [
                      Tab(text: "Credit card"),
                      Tab(text: "Digital card"),
                    ],
                  ),
                ),
              ),

              // TabBarView
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    // First Tab Content
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Enter the amount you want to charge or the points you want to receive',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 25),

                            // Input Row
                            Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: CustomTextField(
                                    controller: Text1,
                                    hintText: 'Paid balance',
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Image.asset(
                                  'assets/images/card-coin.png',
                                  fit: BoxFit.contain,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  flex: 1,
                                  child: CustomTextField(
                                    controller: Text1,
                                    hintText: 'Points balance ',
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                              ],
                            ),

                            const SizedBox(height: 30),

                            // Submit Button
                            SizedBox(
                              child: ElevatedButton(
                                onPressed: () {
                                  showImageTextDialog(context);
                                  // Handle action
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF2AB09C),
                                ),
                                child: const Text(
                                  'Go',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Second Tab Content
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text(
                              'Enter the gift code to charge your points',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 25),

                            // Input Row
                            Container(

                              decoration: BoxDecoration(
                                  color: Colors.white,
                                borderRadius: BorderRadius.circular(15),

                              ),

                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Row(
                                  children: [
                                    Text("Gift code",style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),),
                                    SizedBox(
                                      width: 25,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: CustomTextField(

                                        controller: Text2,
                                        hintText: 'Code',
                                        keyboardType: TextInputType.number,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(height: 30),

                            // Submit Button
                            SizedBox(
                              child: ElevatedButton(
                                onPressed: () {
                                  showImageTextDialog(context);
                                  // Handle action
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xFF2AB09C),
                                ),
                                child: const Text(
                                  'Go',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
void showImageTextDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Rounded corners for the dialog
        ),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min, // Content adjusts within limits
            children: [
              // Close button row
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(), // Close dialog when tapping "X"
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.close,
                        color: const Color(0xFF2AB09C),
                        size: 22,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              // Title text
              const Text(
                'Gain 800 points',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 20),

              // Description text
              const Text(
                '80 SR added successfully to \n your wallet',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 30),

              // OK button
              CustomButton(
                text: 'OK',
                onPressed: () {
                  Navigator.of(context).pop(); // Close the dialog
                },
              ),
            ],
          ),
        ),
      );
    },
  );
}
