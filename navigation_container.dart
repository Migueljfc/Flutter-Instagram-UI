import 'package:flutter/material.dart';
import 'package:instaui/pages/explore.dart';
import 'package:instaui/pages/home.dart';
import 'package:instaui/pages/profile.dart';
import 'package:instaui/pages/reels.dart';
import 'package:instaui/pages/shop.dart';
import 'package:instaui/widgets/custom_navbar.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({super.key});

  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int _selectedIndex = 0;

  static const List<Widget> _appPages = [
    HomePage(),
    ExplorePage(),
    ReelsPage(),
    ShopPage(),
    ProfilePage()
  ];

  void _onIconTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _appPages[_selectedIndex]),
      bottomNavigationBar: CustomNavBar(
        selectedIndex: _selectedIndex,
        onIconTap: _onIconTapped,
      ),
    );
  }
}
