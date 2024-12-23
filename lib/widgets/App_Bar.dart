// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:mostasmer/screens/notifications/notifications.dart';
//
// import '../screens/Badges/Badges.dart';
// import 'Filter.dart';
//
// class AppBar_com extends StatelessWidget {
//   const AppBar_com({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return  Material(
//       color: Colors.transparent,
//       elevation: 1.0,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(10.0),
//           bottomRight: Radius.circular(10.0),
//           topLeft: Radius.circular(0.0),
//           topRight: Radius.circular(0.0),
//         ),
//       ),
//       child: Container(
//         width: double.infinity,
//         height: 150.0,
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFF0F3443), Color(0xFF2AB09C)],
//             stops: [0.0, 1.0],
//             begin: AlignmentDirectional(0.0, -1.0),
//             end: AlignmentDirectional(0, 1.0),
//           ),
//           borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(10.0),
//             bottomRight: Radius.circular(10.0),
//             topLeft: Radius.circular(0.0),
//             topRight: Radius.circular(0.0),
//           ),
//         ),
//         child: Padding(
//           padding: EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 0.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               Row(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       Container(
//                         width: 45.0,
//                         height: 45.0,
//                         clipBehavior: Clip.antiAlias,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                         ),
//                         child: Image.asset(
//                           'assets/images/Ellipse_132.png',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       Column(
//                         mainAxisSize: MainAxisSize.max,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(
//                             mainAxisSize: MainAxisSize.max,
//                             children: [
//                               Text(
//                                 'Welcome back,sama',
//                                 style: TextStyle(
//                                   color: Colors.white,
//
//                                 ),
//                               ),
//                               SizedBox(width: MediaQuery.of(context).size.width*0.02,),
//                               Container(
//                                 decoration: BoxDecoration(
//                                   color: HexColor("#ffffff"),
//                                   borderRadius: BorderRadius.circular(10.0),
//                                   border: Border.all(
//                                     color: Color(0xFF2AB09C),
//                                     width: 1.5,
//                                   ),
//                                 ),
//                                 child: Padding(
//                                   padding: EdgeInsets.all(5.0),
//                                   child: Row(
//                                     mainAxisSize: MainAxisSize.max,
//                                     children: [
//                                       ClipRRect(
//                                         borderRadius: BorderRadius.only(
//                                           bottomLeft: Radius.circular(0.0),
//                                           bottomRight: Radius.circular(0.0),
//                                           topLeft: Radius.circular(0.0),
//                                           topRight: Radius.circular(0.0),
//                                         ),
//                                         child: Image.asset(
//                                           'assets/images/Group.png',
//                                           fit: BoxFit.cover,
//                                         ),
//                                       ),
//                                       Text(
//                                         '50',
//                                         style: TextStyle(
//                                           color: Color(0xFF2AB09C),
//                                           letterSpacing: 0.0,
//                                           fontWeight: FontWeight.bold,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           const Align(
//                             alignment: AlignmentDirectional(-1.0, 0.0),
//                             child: Padding(
//                               padding: EdgeInsetsDirectional.fromSTEB(
//                                   0.0, 5.0, 0.0, 0.0),
//                               child: Text(
//                                 'You have 100 points ready to redeem',
//                                 textAlign: TextAlign.center,
//                                 style: TextStyle(fontSize: 10,
//                                 color: Colors.white
//
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                   SizedBox(width: 15,),
//                   InkWell(
//                     splashColor: Colors.transparent,
//                     focusColor: Colors.transparent,
//                     hoverColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                     onTap: () async {
//                       Navigator.push(context, MaterialPageRoute(builder: (context) => Badges(),));
//                     },
//                     child: Container(
//                       width: 40.0,
//                       height: 40.0,
//                       decoration: BoxDecoration(
//                         color: HexColor('#ffffff'),
//                         borderRadius: BorderRadius.circular(8.0),
//                         border: Border.all(
//                           color: Color(0xFF2AB09C),
//                           width: 1.0,
//                         ),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.all(8.0),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.only(
//                             bottomLeft: Radius.circular(0.0),
//                             bottomRight: Radius.circular(0.0),
//                             topLeft: Radius.circular(0.0),
//                             topRight: Radius.circular(0.0),
//                           ),
//                           child: Image.asset(
//                             'assets/images/Vector.png',
//                             fit: BoxFit.contain,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(width: 15,),
//                   InkWell(
//                     splashColor: Colors.transparent,
//                     focusColor: Colors.transparent,
//                     hoverColor: Colors.transparent,
//                     highlightColor: Colors.transparent,
//                     child: Container(
//                       width: 40.0,
//                       height: 40.0,
//                       decoration: BoxDecoration(
//                         color: HexColor('#ffffff'),
//                         borderRadius: BorderRadius.circular(8.0),
//                         border: Border.all(
//                           color: Color(0xFF2AB09C),
//                           width: 1.0,
//                         ),
//                       ),
//                       child: GestureDetector(
//                         onTap: (){
//                           Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications()));
//
//                         },
//                         child: Padding(
//                           padding: EdgeInsets.all(8.0),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.only(
//                               bottomLeft: Radius.circular(0.0),
//                               bottomRight: Radius.circular(0.0),
//                               topLeft: Radius.circular(0.0),
//                               topRight: Radius.circular(0.0),
//                             ),
//                             child: Image.asset(
//                               'assets/images/notification-bing.png',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
//                 child: Row(
//                   mainAxisSize: MainAxisSize.max,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Expanded(
//                       child: Padding(
//                         padding:
//                             EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
//                         child: Container(
//                           height: 50.0,
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(50.0),
//                           ),
//                           child: TextFormField(
//                             autofocus: false,
//                             obscureText: false,
//                             decoration: InputDecoration(
//                               hintText: 'Search here ...',
//                               enabledBorder: OutlineInputBorder(
//                                 borderSide: const BorderSide(
//                                   color: Color(0xFF939393),
//                                   width: 1.0,
//                                 ),
//                                 borderRadius: BorderRadius.circular(50.0),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                 borderSide: const BorderSide(
//                                   color: Color(0xFF14181B),
//                                   width: 1.0,
//                                 ),
//                                 borderRadius: BorderRadius.circular(50.0),
//                               ),
//                               errorBorder: OutlineInputBorder(
//                                 borderSide: const BorderSide(
//                                   width: 1.0,
//                                 ),
//                                 borderRadius: BorderRadius.circular(50.0),
//                               ),
//                               focusedErrorBorder: OutlineInputBorder(
//                                 borderSide: const BorderSide(
//                                   width: 1.0,
//                                 ),
//                                 borderRadius: BorderRadius.circular(50.0),
//                               ),
//                               prefixIcon: const Icon(
//                                 Icons.search_rounded,
//                                 size: 25.0,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding:
//                           const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
//                       child: InkWell(
//                         splashColor: Colors.transparent,
//                         focusColor: Colors.transparent,
//                         hoverColor: Colors.transparent,
//                         highlightColor: Colors.transparent,
//                         onTap: () async {
//                           await showModalBottomSheet(
//                             isScrollControlled: true,
//                             backgroundColor: Colors.transparent,
//                             enableDrag: false,
//                             context: context,
//                             builder: (context) {
//                               return Padding(
//                                 padding: MediaQuery.viewInsetsOf(context),
//                                 child: FilterWidget(),
//                               );
//                             },
//                           );
//                         },
//                         child: ClipRRect(
//                           borderRadius: const BorderRadius.only(
//                             bottomLeft: Radius.circular(0.0),
//                             bottomRight: Radius.circular(0.0),
//                             topLeft: Radius.circular(0.0),
//                             topRight: Radius.circular(0.0),
//                           ),
//                           child: Image.asset(
//                             'assets/images/Frame_1000006050.png',
//                             height: 53.0,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:get/get.dart';
import 'package:mostasmer/screens/notifications/notifications.dart';
import 'package:mostasmer/screens/Badges/Badges.dart';
import '../screens/Profile/user_controller.dart';       // Prefix added

// import 'package:mostasmer/screens/HomePage/search_controller.dart' as custom_search_controller;


class AppBar_com extends StatelessWidget {
  const AppBar_com({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final custom_search_controller.SearchController searchController = Get.put(custom_search_controller.SearchController());

    return Material(
      color: Colors.transparent,
      elevation: 1.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
          topLeft: Radius.circular(0.0),
          topRight: Radius.circular(0.0),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: 150.0,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF0F3443), Color(0xFF2AB09C)],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.0, -1.0),
            end: AlignmentDirectional(0, 1.0),
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.0, 15.0, 10.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 45.0,
                        height: 45.0,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/Ellipse_132.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Obx((){
                        final user = Get.find<UserController>().user.value;

                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '${tr('welcome_back')}, ${user.fullname}',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(width: MediaQuery.of(context).size.width*0.02,),
                                Container(
                                  decoration: BoxDecoration(
                                    color: HexColor("#ffffff"),
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: Color(0xFF2AB09C),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                          child: Image.asset(
                                            'assets/images/Group.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          '50',
                                          style: TextStyle(
                                            color: Color(0xFF2AB09C),
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 5.0, 0.0, 0.0),
                                child: Text(
                                  'You have 100 points ready to redeem',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 10,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                    ],
                  ),
                  SizedBox(width: 15,),
                  Container(
                    child: Row(
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Badges(),));
                          },
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: HexColor('#ffffff'),
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Color(0xFF2AB09C),
                                width: 1.0,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                                child: Image.asset(
                                  'assets/images/Vector.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15,),
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Container(
                            width: 40.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: HexColor('#ffffff'),
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: Color(0xFF2AB09C),
                                width: 1.0,
                              ),
                            ),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Notifications()));
                              },
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(0.0),
                                    bottomRight: Radius.circular(0.0),
                                    topLeft: Radius.circular(0.0),
                                    topRight: Radius.circular(0.0),
                                  ),
                                  child: Image.asset(
                                    'assets/images/notification-bing.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                ],
              ),
              // Padding(
              //   padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
              //   child: Row(
              //     mainAxisSize: MainAxisSize.max,
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       Expanded(
              //         child: Padding(
              //           padding:
              //           EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
              //           child: Container(
              //             height: 50.0,
              //             decoration: BoxDecoration(
              //               color: Colors.white,
              //               borderRadius: BorderRadius.circular(50.0),
              //             ),
              //             child: TextFormField(
              //               autofocus: false,
              //               obscureText: false,
              //               onChanged: (text) {
              //                 if (text.isNotEmpty) {
              //                   searchController.searchBrands(text); // Call search method
              //                 } else {
              //                   searchController.searchResults.clear(); // Clear results if empty
              //                 }
              //               },
              //               decoration: InputDecoration(
              //                 hintText: 'Search here ...',
              //                 enabledBorder: OutlineInputBorder(
              //                   borderSide: const BorderSide(
              //                     color: Color(0xFF939393),
              //                     width: 1.0,
              //                   ),
              //                   borderRadius: BorderRadius.circular(50.0),
              //                 ),
              //                 focusedBorder: OutlineInputBorder(
              //                   borderSide: const BorderSide(
              //                     color: Color(0xFF14181B),
              //                     width: 1.0,
              //                   ),
              //                   borderRadius: BorderRadius.circular(50.0),
              //                 ),
              //                 errorBorder: OutlineInputBorder(
              //                   borderSide: const BorderSide(
              //                     width: 1.0,
              //                   ),
              //                   borderRadius: BorderRadius.circular(50.0),
              //                 ),
              //                 focusedErrorBorder: OutlineInputBorder(
              //                   borderSide: const BorderSide(
              //                     width: 1.0,
              //                   ),
              //                   borderRadius: BorderRadius.circular(50.0),
              //                 ),
              //                 prefixIcon: const Icon(
              //                   Icons.search_rounded,
              //                   size: 25.0,
              //                 ),
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Display Search Results below the search bar
              // Obx(() {
              //   if (searchController.isLoading.value) {
              //     return Center(child: CircularProgressIndicator());
              //   } else if (searchController.searchResults.isEmpty) {
              //     return Padding(
              //       padding: const EdgeInsets.all(8.0),
              //       child: Text(
              //         "No results found.",
              //         style: TextStyle(color: Colors.white),
              //       ),
              //     );
              //   } else {
              //     return Column(
              //       children: searchController.searchResults.map((brand) {
              //         return ListTile(
              //           leading: Image.network(brand.logo),
              //           title: Text(brand.name),
              //         );
              //       }).toList(),
              //     );
              //   }
              // }),\
            ],
          ),
        ),
      ),
    );
  }
}
