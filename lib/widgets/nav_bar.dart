import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // For loading SVG images
import 'package:mostasmer/screens/Brands/Brands.dart';
import 'package:mostasmer/screens/Categories/Categories.dart';
import 'package:mostasmer/screens/HomePage/Home_page_Screen.dart';

import '../screens/Wallet/wallet-Screen.dart';
import 'custome_drawer.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>(); // GlobalKey for the Scaffold

  // List of pages to navigate between
  final List<Widget> _pages = [HomePageScreen(), Brands(), Categories(), BalancePage()];

  // Function to get the color based on selection
  Color _getColor(int index) {
    return _currentIndex == index ? Colors.green : Colors.grey;
  }

  // Function to get the text color based on selection
  // Color _getTextColor(int index) {
  //   return _currentIndex == index ? Colors.black : Colors.grey;
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey, // Assign the scaffold key
        drawer: CustomDrawer(),
        body: _pages[_currentIndex], // Display the selected page
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex, // The currently selected index
          onTap: (int index) {
            if (index == 4) {
              _scaffoldKey.currentState?.openDrawer(); // Open the drawer when the 4th item is tapped
            } else {
              setState(() {
                _currentIndex = index; // Update the selected index for other items
              });
            }
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/navbar/home.svg', // Path to your SVG file
                color: _getColor(0), // Change icon color based on selection
                width: 30,
                height: 30,
              ),
              label: '${tr('home')}',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/navbar/brands.svg', // Path to your SVG file
                color: _getColor(1), // Change icon color based on selection
                width: 30,
                height: 30,
              ),
              label: '${tr('brands')}',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/navbar/cate.svg', // Path to your SVG file
                color: _getColor(2), // Change icon color based on selection
                width: 30,
                height: 30,
              ),
              label: '${tr('categories')}',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/navbar/wallet.svg', // Path to your SVG file
                color: _getColor(3), // Change icon color based on selection
                width: 30,
                height: 30,
              ),
              label: '${tr('wallet')}',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/navbar/menu.svg', // Path to your SVG file
                color: _getColor(4), // Change icon color based on selection
                width: 22,
                height: 24,
              ),
              label: '${tr('menu')}', // Label for the drawer icon
            ),
          ],
          selectedItemColor: Colors.green, // Color for active item
          unselectedItemColor: Colors.grey, // Color for inactive items
          showSelectedLabels: true, // Ensures that the label is shown for the selected item
          showUnselectedLabels: true, // Ensures that the label is shown for unselected items
          selectedFontSize: 16,
          unselectedFontSize: 14,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
