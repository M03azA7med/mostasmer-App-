// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:mostasmer/widgets/App_Bar2.dart';
// import 'package:syncfusion_flutter_sliders/sliders.dart';
//
// import 'App_Button.dart';
//
// class FilterWidget extends StatefulWidget {
//   const FilterWidget({Key? key}) : super(key: key);
//
//
//   @override
//   _FilterWidgetState createState() => _FilterWidgetState();
// }
//
// class _FilterWidgetState extends State<FilterWidget> {
//   // State field(s) for DropDown widget.
//   String? dropDownValue1;
//   String? dropDownValue2;
//   SfRangeValues _values = SfRangeValues(40.0, 80.0);
//   // State field(s) for Slider widget.
//   double? sliderValue;
//   final List<String> items = [
//     'Noon shop ',
//     'Glitter shop',
//     'Amazon',
//     'Samsung shop',
//     'Carrefour',
//     'Shein',
//   ];
//   String? selectedValue;
//
//   final List<String> items2 = [
//     'Phones',
//     'Clothes',
//     'Bags',
//     'Shoes',
//   ];
//   String? selectedValue2;
//
//
//   @override
//   void initState() {
//     super.initState();
//     dropDownValue1 = 'Amazon'; // Initial value
//     dropDownValue2 = 'Electronics'; // Initial value
//     sliderValue = 5.0; // Initial slider value
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Align(
//         alignment: Alignment.topRight,
//         child: Container(
//           width: MediaQuery.of(context).size.width*0.6,
//           decoration: BoxDecoration(
//
//             color: Colors.white,
//
//           ),
//           child: Padding(
//             padding: const EdgeInsets.only(top: 20),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//
//               children: [
//
//                 const AppBar2(PageName: 'Filter'),
//                 const SizedBox(height: 20,),
//
//                 // Dropdown 1 (Brand)
//                 Padding(
//                   padding: const EdgeInsets.all(20.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text("Brand",style: TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.bold,
//
//                       ),),
//                       SizedBox(height: 10,),
//                       // Dropdown 1 (Brand)
//                       DropdownButtonHideUnderline(
//                         child: DropdownButton2<String>(
//                           isExpanded: true,
//                           hint: const Row(
//                             children: [
//
//                               SizedBox(
//                                 width: 4,
//                               ),
//                               Expanded(
//                                 child: Text(
//                                   'Brand',
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black,
//                                   ),
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           items: items
//                               .map((String item) => DropdownMenuItem<String>(
//                             value: item,
//                             child: Text(
//                               item,
//                               style: const TextStyle(
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                               ),
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ))
//                               .toList(),
//                           value: selectedValue,
//                           onChanged: (value) {
//                             setState(() {
//                               selectedValue = value;
//                             });
//                           },
//                           buttonStyleData: ButtonStyleData(
//                             height: 50,
//                             width: 160,
//                             padding: const EdgeInsets.only(left: 14, right: 14),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(14),
//                               border: Border.all(
//                                 color: Colors.black26,
//                               ),
//                               color: Color(0xFFFFFFFF),
//                             ),
//                             elevation: 2,
//                           ),
//                           iconStyleData: const IconStyleData(
//                             icon: Icon(
//                               Icons.arrow_forward_ios_outlined,
//                             ),
//                             iconSize: 14,
//                             iconEnabledColor: Color(0xFF2AB09C),
//                             iconDisabledColor: Colors.grey,
//                           ),
//                           dropdownStyleData: DropdownStyleData(
//                             maxHeight: 200,
//                             width: 200,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(14),
//                               color: Color(0xFFFFFFFF),
//                             ),
//                             offset: const Offset(-20, 0),
//                             scrollbarTheme: ScrollbarThemeData(
//                               radius: const Radius.circular(40),
//                               thickness: MaterialStateProperty.all(6),
//                               thumbVisibility: MaterialStateProperty.all(true),
//                             ),
//                           ),
//                           menuItemStyleData: const MenuItemStyleData(
//                             height: 40,
//                             padding: EdgeInsets.only(left: 14, right: 14),
//                           ),
//                         ),
//                       ),
//
//                       const SizedBox(height: 20,),
//                       const Text("Categories",style: TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold
//                       ),),
//                       // Dropdown 2 (Categories)
//                       SizedBox(height: 10,),
//
//                       DropdownButtonHideUnderline(
//                         child: DropdownButton2<String>(
//                           isExpanded: true,
//                           hint: const Row(
//                             children: [
//
//                               SizedBox(
//                                 width: 4,
//                               ),
//                               Expanded(
//                                 child: Text(
//                                   'Categories',
//                                   style: TextStyle(
//                                     fontSize: 14,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.black,
//                                   ),
//                                   overflow: TextOverflow.ellipsis,
//                                 ),
//                               ),
//                             ],
//                           ),
//                           items: items2
//                               .map((String item) => DropdownMenuItem<String>(
//                             value: item,
//                             child: Text(
//                               item,
//                               style: const TextStyle(
//                                 fontSize: 14,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                               ),
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ))
//                               .toList(),
//                           value: selectedValue2,
//                           onChanged: (value) {
//                             setState(() {
//                               selectedValue2 = value;
//                             });
//                           },
//                           buttonStyleData: ButtonStyleData(
//                             height: 50,
//                             width: 160,
//                             padding: const EdgeInsets.only(left: 14, right: 14),
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(14),
//                               border: Border.all(
//                                 color: Colors.black26,
//                               ),
//                               color: Color(0xFFFFFFFF),
//                             ),
//                             elevation: 2,
//                           ),
//                           iconStyleData: const IconStyleData(
//                             icon: Icon(
//                               Icons.arrow_forward_ios_outlined,
//                             ),
//                             iconSize: 14,
//                             iconEnabledColor: Color(0xFF2AB09C),
//                             iconDisabledColor: Colors.grey,
//                           ),
//                           dropdownStyleData: DropdownStyleData(
//                             maxHeight: 200,
//                             width: 200,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(14),
//                               color: Color(0xFFFFFFFF),
//                             ),
//                             offset: const Offset(-20, 0),
//                             scrollbarTheme: ScrollbarThemeData(
//                               radius: const Radius.circular(40),
//                               thickness: MaterialStateProperty.all(6),
//                               thumbVisibility: MaterialStateProperty.all(true),
//                             ),
//                           ),
//                           menuItemStyleData: const MenuItemStyleData(
//                             height: 40,
//                             padding: EdgeInsets.only(left: 14, right: 14),
//                           ),
//                         ),
//                       ),
//
//                     ],
//                   ),
//                 ),
//
//                 const Padding(
//                   padding: EdgeInsets.only(left: 15),
//                   child: Text("Offers",style: TextStyle(
//                       fontSize: 15,
//                       fontWeight: FontWeight.bold
//                   ),),
//                 ),
//                 // Slider
//                 SfRangeSlider(
//                   activeColor: Color(0xFF2AB09C),
//
//                   min: 0.0,
//                   max: 100.0,
//                   values: _values,
//                   interval: 20,
//                   showTicks: true,
//                   showLabels: true,
//                   enableTooltip: true,
//                   minorTicksPerInterval: 1,
//                   onChanged: (SfRangeValues values){
//                     setState(() {
//                       _values = values;
//                     });
//                   },
//                 ),
//                 const SizedBox(height: 45,),
//                 Center(
//                   child: Container(
//                     width: MediaQuery.of(context).size.width*0.5,
//                     child: CustomButton(
//                       text: 'Apply',
//                       onPressed: (){
//                         Navigator.pop(context);
//                       },
//                     ),
//                   ),
//                 ),],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }



/////

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mostasmer/widgets/App_Bar2.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

import '../screens/Brands/Brand_controller.dart';
import '../screens/Categories/Category_controller.dart';
import '../screens/FilterPage/filtter_controller.dart';
import '../screens/FilterPage/filtter_screen.dart';
import 'App_Button.dart';

class FilterWidget extends StatefulWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  _FilterWidgetState createState() => _FilterWidgetState();
}

class _FilterWidgetState extends State<FilterWidget> {
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  String? dropDownValue2;
  SfRangeValues _values = SfRangeValues(0.0, 80.0);
  // State field(s) for Slider widget.
  double? sliderValue;

  final BrandController brandController = Get.find(); // Initialize BrandController
  final CategoryController categoryController = Get.find(); // Initialize CategoryController
  final OfferController offerController = Get.find(); // Initialize OfferController

  String? selectedBrand;
  String? selectedCategory;

  @override
  void initState() {
    super.initState();
    dropDownValue1 = 'Amazon'; // Initial value
    dropDownValue2 = 'Electronics'; // Initial value
    sliderValue = 5.0; // Initial slider value
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: EdgeInsets.only(top: 60),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppBar2(PageName: 'Filter'),
                  const SizedBox(height: 20),

                  // Dropdown 1 (Brand)
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Brand",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Dropdown 1 (Brand)
                        Obx(() {
                          if (brandController.isLoading.value) {
                            return const Center(child: CircularProgressIndicator());
                          }
                          return DropdownButtonHideUnderline(
                            child: DropdownButton2<String>(
                              isExpanded: true,
                              hint: const Row(
                                children: [
                                  SizedBox(width: 4),
                                  Expanded(
                                    child: Text(
                                      'Select Brand',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              items: brandController.brandList
                                  .map((brand) => DropdownMenuItem<String>(
                                value: brand.name,
                                child: Text(
                                  brand.name,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ))
                                  .toList(),
                              value: selectedBrand,
                              onChanged: (value) {
                                setState(() {
                                  selectedBrand = value;
                                });
                              },
                              buttonStyleData: ButtonStyleData(
                                height: 50,
                                width: 160,
                                padding: const EdgeInsets.only(left: 14, right: 14),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(
                                    color: Colors.black26,
                                  ),
                                  color: Color(0xFFFFFFFF),
                                ),
                                elevation: 2,
                              ),
                              iconStyleData: const IconStyleData(
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                ),
                                iconSize: 14,
                                iconEnabledColor: Color(0xFF2AB09C),
                                iconDisabledColor: Colors.grey,
                              ),
                              dropdownStyleData: DropdownStyleData(
                                maxHeight: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Color(0xFFFFFFFF),
                                ),
                                offset: const Offset(-20, 0),
                                scrollbarTheme: ScrollbarThemeData(
                                  radius: const Radius.circular(40),
                                  thickness: MaterialStateProperty.all(6),
                                  thumbVisibility: MaterialStateProperty.all(true),
                                ),
                              ),
                              menuItemStyleData: const MenuItemStyleData(
                                height: 40,
                                padding: EdgeInsets.only(left: 14, right: 14),
                              ),
                            ),
                          );
                        }),

                        const SizedBox(height: 20),
                        const Text(
                          "Categories",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10),
                        // Dropdown 2 (Categories)
                        Obx(() {
                          if (categoryController.isLoading.value) {
                            return const Center(child: CircularProgressIndicator());
                          }
                          return DropdownButtonHideUnderline(
                            child: DropdownButton2<String>(
                              isExpanded: true,
                              hint: const Row(
                                children: [
                                  SizedBox(width: 4),
                                  Expanded(
                                    child: Text(
                                      'Select Category',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                ],
                              ),
                              items: categoryController.categoryList
                                  .map((category) => DropdownMenuItem<String>(
                                value: category.name,
                                child: Text(
                                  category.name,
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ))
                                  .toList(),
                              value: selectedCategory,
                              onChanged: (value) {
                                setState(() {
                                  selectedCategory = value;
                                });
                              },
                              buttonStyleData: ButtonStyleData(
                                height: 50,
                                width: 160,
                                padding: const EdgeInsets.only(left: 14, right: 14),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(
                                    color: Colors.black26,
                                  ),
                                  color: Color(0xFFFFFFFF),
                                ),
                                elevation: 2,
                              ),
                              iconStyleData: const IconStyleData(
                                icon: Icon(
                                  Icons.arrow_forward_ios_outlined,
                                ),
                                iconSize: 14,
                                iconEnabledColor: Color(0xFF2AB09C),
                                iconDisabledColor: Colors.grey,
                              ),
                              dropdownStyleData: DropdownStyleData(
                                maxHeight: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: Color(0xFFFFFFFF),
                                ),
                                offset: const Offset(-20, 0),
                                scrollbarTheme: ScrollbarThemeData(
                                  radius: const Radius.circular(40),
                                  thickness: MaterialStateProperty.all(6),
                                  thumbVisibility: MaterialStateProperty.all(true),
                                ),
                              ),
                              menuItemStyleData: const MenuItemStyleData(
                                height: 40,
                                padding: EdgeInsets.only(left: 14, right: 14),
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Offers",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Slider
                  SfRangeSlider(
                    activeColor: Color(0xFF2AB09C),
                    min: 0.0,
                    max: 100.0,
                    values: _values,
                    interval: 20,
                    showTicks: true,
                    showLabels: true,
                    enableTooltip: true,
                    minorTicksPerInterval: 1,
                    onChanged: (SfRangeValues values) {
                      setState(() {
                        _values = values;
                      });
                    },
                  ),
                  const SizedBox(height: 45),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: CustomButton(
                        text: 'Apply',
                          onPressed: () async {
                            // Get selected filters (brand, category, min/max ratio)
                            int? brandId = selectedBrand != null
                                ? brandController.brandList
                                .firstWhere((brand) => brand.name == selectedBrand)
                                .id
                                : null;
                            int? categoryId = selectedCategory != null
                                ? categoryController.categoryList
                                .firstWhere((category) => category.name == selectedCategory)
                                .id
                                : null;

                            double minRatio = _values.start;
                            double maxRatio = _values.end;

                            // Fetch the offers based on the selected filters
                            await offerController.fetchOffers(
                              brandId: brandId,
                              categoryId: categoryId,
                              minRatio: minRatio,
                              maxRatio: maxRatio,
                            );
                            Navigator.pop(context);
                            // Navigate to the results page
                            Get.to(() => ResultsPage());
                          }
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
