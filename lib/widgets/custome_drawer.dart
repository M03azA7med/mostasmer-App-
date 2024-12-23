// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:mostasmer/screens/About_Us/AboutUs.dart';
// import 'package:mostasmer/screens/Brands/Brands.dart';
// import 'package:mostasmer/screens/Digital-card-terms/Digital%20card%20terms.dart';
// import 'package:mostasmer/screens/Gifts/gifts.dart';
// import 'package:mostasmer/screens/LoginScreen/login_screen.dart';
// import 'package:mostasmer/screens/Privacy_policy/Privacy-policy.dart';
// import 'package:mostasmer/screens/Profile/profile.dart';
// import 'package:mostasmer/screens/Terms&conditions/Terms-and-conditions.dart';
// import 'package:mostasmer/widgets/nav_bar.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// // import '../routes/app_routes.dart';
// import '../screens/Categories/Categories.dart';
// import '../screens/Contact us/Contact-us.dart';
// import '../screens/FAQ/faq.dart';
// import '../screens/Mission_Vision/MissionVision.dart';
// import '../screens/Profile/user_controller.dart';
//
// class CustomDrawer extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Drawer Header
//           Padding(
//             padding: const EdgeInsets.only(top: 10, bottom: 10, left: 15, right: 15),
//             child: Container(
//               decoration: BoxDecoration(
//                 gradient: const LinearGradient(
//                   colors: [
//                     Color(0xff0F3443),
//                     Color(0xff2AB09C),
//                   ], // Define the gradient colors
//                   begin: Alignment.topLeft, // Start point of the gradient
//                   end: Alignment.bottomRight, // End point of the gradient
//                 ),
//                 borderRadius: BorderRadius.circular(12), // Keep the border radius
//               ),
//               padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
//               child: Column(
//                 children: [
//                   CircleAvatar(
//                     radius: 40,
//                     backgroundImage: AssetImage(
//                         'assets/launcherIcon/app_launcher_icon.png'), // Replace with your image
//                   ),
//                   const SizedBox(height: 10),
//                   Obx(() {
//                     final user = Get.find<UserController>().user.value;
//                     return Text(
//                       user.fullname ?? 'Name not available', // Display user's full name
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     );
//                   }),
//                   const SizedBox(height: 5),
//                   Obx(() {
//                     final user = Get.find<UserController>().user.value;
//                     return Text(
//                       user.email ?? 'Email not available', // Display user's email
//                       style: const TextStyle(
//                         color: Colors.white70,
//                         fontSize: 14,
//                       ),
//                     );
//                   }),
//                   const SizedBox(height: 10),
//                   const Divider(
//                     endIndent: 8,
//                     indent: 8,
//                     color: Colors.white30,
//                   ),
//                   const SizedBox(height: 10),
//                    Text(
//                     '${tr('profileMessage')}', // Replace with a dynamic message if needed
//                     style: TextStyle(
//                       color: Colors.white70,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//
//           // Menu Items
//           Expanded(
//             child: ListView(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 20),
//                   child: _buildDrawerItem('${tr('home')}', onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
//
//                     // Add navigation or functionality
//                   }),
//                 ),
//                 const Divider(
//                   endIndent: 20,
//                   indent: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 20),
//                   child: _buildDrawerItem('${tr('profile')}', onTap: () {
//                     // Add navigation or functionality
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage(),));
//
//                   }),
//                 ),
//                 const Divider(
//                   endIndent: 20,
//                   indent: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 20),
//                   child: _buildDrawerItem('${tr('Gift')}', onTap: () {
//                     // Add navigation or functionality
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => GiftsPage(),));
//
//                   }),
//                 ),
//                 const Divider(
//                   endIndent: 20,
//                   indent: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 20),
//                   child: _buildDrawerItem('${tr('my_orders')}', onTap: () {
//                     // Add navigation or functionality
//                   }),
//                 ),
//                 const Divider(
//                   endIndent: 20,
//                   indent: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 20),
//                   child: _buildDrawerItem('${tr('categories')}', onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => Categories()));
//
//                     // Add navigation or functionality
//                   }),
//                 ),
//                 const Divider(
//                   endIndent: 20,
//                   indent: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 20),
//                   child: _buildDrawerItem('${tr('brands')}', onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context) => Brands()));
//
//                     // Add navigation or functionality
//                   }),
//                 ),
//                 const Divider(
//                   endIndent: 20,
//                   indent: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 20),
//                   child: _buildExpandableItem('${tr('Settings')}', [
//                     _buildSubItem('${tr('Change_Language')}', onTap: () {}),
//                     _buildSubItem('${tr('Reset_Password')}', onTap: () {}),
//                   ]),
//                 ),
//                 const Divider(
//                   endIndent: 20,
//                   indent: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 20),
//                   child: _buildExpandableItem('${tr('App_Information')}', [
//                     _buildSubItem('${tr('About_Us')}', onTap: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => Aboutus(),));
//                     }),
//                     _buildSubItem('${tr('Contact_Us')}', onTap: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => Contactus()));
//
//                     }),
//                     _buildSubItem('${tr('Mission&Vision')}', onTap: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => Missionvision()));
//
//                     }),
//                     _buildSubItem('${tr('Privacy_Policy')}', onTap: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => Privacypolicy(),));
//
//                     }),
//                     _buildSubItem('${tr('Terms_and_conditions')}', onTap: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => Termsandconditions(),));
//
//                     }),
//                     _buildSubItem('${tr('Digital_card_terms')}', onTap: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => Digitalcardterms(),));
//
//                     }),
//                     _buildSubItem('${tr('FAQ')}', onTap: () {
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => FAQPage(),));
//
//                     }),
//                   ]),
//                 ),
//                 const Divider(
//                   endIndent: 20,
//                   indent: 20,
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 20),
//                   child: _buildDrawerItem('${tr('Join_as_brand')}', onTap: () {
//                     // Add navigation or functionality
//                   }),
//                 ),
//               ],
//             ),
//           ),
//           // Logout Item
//           Padding(
//             padding: EdgeInsets.only(left: 20, right: 20),
//             child: ListTile(
//               leading: const Icon(Icons.logout, color: Colors.teal),
//               title:  Text(tr('Log_out'),
//                 style: TextStyle(color: Colors.teal),
//               ),
//               onTap: () async {
//                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
//                 final prefs = await SharedPreferences.getInstance();
//                 await prefs.remove('token');
//                 // Add logout functionality
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDrawerItem(String title, {VoidCallback? onTap}) {
//     return ListTile(
//       title: Text(title, style: const TextStyle(color: Colors.black)),
//       onTap: onTap,
//     );
//   }
//
//   Widget _buildExpandableItem(String title, List<Widget> children) {
//     return ExpansionTile(
//       // leading: Icon(icon, color: Colors.teal),
//       title: Text(title, style: const TextStyle(color: Colors.black)),
//       children: children,
//     );
//   }
//
//   Widget _buildSubItem(String title, {VoidCallback? onTap}) {
//     return ListTile(
//       title: Text(title, style: const TextStyle(color: Colors.grey)),
//       onTap: onTap,
//     );
//   }
// }


import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mostasmer/screens/About_Us/AboutUs.dart';
import 'package:mostasmer/screens/Brands/Brands.dart';
import 'package:mostasmer/screens/Digital-card-terms/Digital%20card%20terms.dart';
import 'package:mostasmer/screens/Gifts/gifts.dart';
import 'package:mostasmer/screens/LoginScreen/login_screen.dart';
import 'package:mostasmer/screens/Privacy_policy/Privacy-policy.dart';
import 'package:mostasmer/screens/Profile/profile.dart';
import 'package:mostasmer/screens/Terms&conditions/Terms-and-conditions.dart';
import 'package:mostasmer/widgets/nav_bar.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import '../routes/app_routes.dart';
import '../screens/Categories/Categories.dart';
import '../screens/ChangeLanguage/change_language.dart';
import '../screens/Contact us/Contact-us.dart';
import '../screens/FAQ/faq.dart';
import '../screens/Mission_Vision/MissionVision.dart';
import '../screens/Profile/user_controller.dart';

class CustomDrawer extends StatelessWidget {
  final UserController userController = Get.find<UserController>();

  CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Drawer Header
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xff0F3443), Color(0xff2AB09C)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/launcherIcon/app_launcher_icon.png'),
                  ),
                  const SizedBox(height: 10),
                  Obx(() {
                    final user = userController.user.value;
                    return Text(
                      user.fullname ?? 'Name not available',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  }),
                  const SizedBox(height: 5),
                  Obx(() {
                    final user = userController.user.value;
                    return Text(
                      user.email ?? 'Email not available',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    );
                  }),
                  const SizedBox(height: 10),
                  const Divider(color: Colors.white30),
                  const SizedBox(height: 10),
                  Text(
                    tr('profileMessage'),
                    style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Menu Items
          Expanded(
            child: ListView(
              children: [
                _buildDrawerItem(tr('home'), onTap: () => Get.to(MainPage())),
                _buildDrawerItem(tr('profile'), onTap: () => Get.to(ProfilePage())),
                _buildDrawerItem(tr('Gift'), onTap: () => Get.to(GiftsPage())),
                _buildDrawerItem(tr('my_orders'), onTap: () {}),
                _buildDrawerItem(tr('categories'), onTap: () => Get.to(Categories())),
                _buildDrawerItem(tr('brands'), onTap: () => Get.to(Brands())),
                _buildExpandableItem(tr('Settings'), [
                  _buildSubItem(tr('Change_Language'), onTap: () => Get.to(ChangeLanguage())),
                  _buildSubItem(tr('Reset_Password'), onTap: () {}),
                ]),
                _buildExpandableItem(tr('App_Information'), [
                  _buildSubItem(tr('About_Us'), onTap: () => Get.to(Aboutus())),
                  _buildSubItem(tr('Contact_Us'), onTap: () => Get.to(Contactus())),
                  _buildSubItem(tr('Mission&Vision'), onTap: () => Get.to(const Missionvision())),
                  _buildSubItem(tr('Privacy_Policy'), onTap: () => Get.to(const Privacypolicy())),
                  _buildSubItem(tr('Terms_and_conditions'), onTap: () => Get.to(const Termsandconditions())),
                  _buildSubItem(tr('Digital_card_terms'), onTap: () => Get.to(const Digitalcardterms())),
                  _buildSubItem(tr('FAQ'), onTap: () => Get.to(FAQPage())),
                ]),
                _buildDrawerItem(tr('Join_as_brand'), onTap: () {}),
              ],
            ),
          ),

          // Logout Item
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListTile(
              leading: const Icon(Icons.logout, color: Colors.teal),
              title: Text(
                tr('Log_out'),
                style: const TextStyle(color: Colors.teal),
              ),
              onTap: () async {
                final prefs = await SharedPreferences.getInstance();
                await prefs.remove('token');
                Get.offAll(LoginScreen());
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerItem(String title, {VoidCallback? onTap}) {
    return ListTile(
      title: Text(title, style: const TextStyle(color: Colors.black)),
      onTap: onTap,
    );
  }

  Widget _buildExpandableItem(String title, List<Widget> children) {
    return ExpansionTile(
      title: Text(title, style: const TextStyle(color: Colors.black)),
      children: children,
    );
  }

  Widget _buildSubItem(String title, {VoidCallback? onTap}) {
    return ListTile(
      title: Text(title, style: const TextStyle(color: Colors.grey)),
      onTap: onTap,
    );
  }
}