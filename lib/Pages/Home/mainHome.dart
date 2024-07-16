// import 'package:eezimed_deliveries/pages/add-to-cart/bloc/add_to_cart_bloc.dart';

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../Colors/appcolors.dart';
import 'homePage.dart';

class myHomePage extends StatefulWidget {
  const myHomePage({super.key});

  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  int _selectedIndex = 0;
  static List body = [
    homePage(),
    homePage(),
    homePage(),
    homePage(),
  ];
  void _bottomNAvigationBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: body.elementAt(_selectedIndex),
        bottomNavigationBar: GNav(
              rippleColor: appColors.redAccent,
              hoverColor: appColors.redAccent,
              gap: 8,
              activeColor: appColors.redAccent,
          
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: appColors.redAccent,
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.location_on,
                  text: 'Location',
                ),
                GButton(
                  icon: Icons.card_travel,
                  text: 'Trips',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
        );
  }
}