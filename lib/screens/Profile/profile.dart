// import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mostasmer/screens/Profile/user_controller.dart';
import 'package:mostasmer/widgets/Custom_TextField.dart';

import '../../widgets/App_Bar2.dart';

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});

  final UserController userController = Get.put(UserController());

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // AppBar
              Container(
                color: Colors.white,
                child:  AppBar2(PageName: '${tr('profile')}'),
              ),
              const SizedBox(height: 20),
              // User Profile Information
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFF00255C),
                          Color(0xFF0066FF),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Stack(
                        children: [
                          Image.asset('assets/Group.png'),
                          Column(
                            children: [
                              const SizedBox(height: 15),
                              Obx(() {
                                final user = widget.userController.user.value;
                                return Column(
                                  children: [
                                    Image.asset('assets/Ellipse 132.png'),
                                    Text(
                                      user.fullname ?? 'Name not available',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      user.email ?? 'Email not available',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      user.phone ?? 'Phone not available',
                                      style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                );
                              }),
                              const SizedBox(height: 15),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text(tr('profileMessage'))],
                ),
              ),
              // Editable Fields
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: Obx(() {
                  final user = widget.userController.user.value;
                  return CustomTextField(
                    labelText: user.fullname ?? 'Name not available',
                    suffixIcon: const Icon(Icons.edit, color: Colors.green),

                  );
                }),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: CustomTextField(
                  labelText: '${tr('Gender')}',
                  suffixIcon: const Icon(Icons.edit, color: Colors.green),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: CustomTextField(
                  labelText: '${tr(
                    'Date_Of_Birth'
                  )}',
                  suffixIcon: const Icon(Icons.edit, color: Colors.green),
                ),
              ),
              // Points Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      '${tr('Your_Points')}',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [Text(tr('PointsMessage'))],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Row(
                  children: [
                    Image.asset('assets/Vector.png'),
                    const SizedBox(width: 10),
                    const Text('500', style: TextStyle(fontWeight: FontWeight.bold)),
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
