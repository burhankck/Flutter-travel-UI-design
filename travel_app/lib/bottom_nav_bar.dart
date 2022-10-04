import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:travel_app/home_screen.dart';
import 'package:travel_app/splash_screen.dart';

class ButtomNavBar extends StatefulWidget {
  const ButtomNavBar({super.key});

  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
  int _index = 0;

  static const List<Widget> _widgetBodies = <Widget>[
    HomeScreen(),
    Text('2.sayfa'),
    Text('3.sayfa'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetBodies.elementAt(_index),
      ),
      bottomNavigationBar: FloatingNavbar(
        onTap: (int val) => setState(() => _index = val),
        currentIndex: _index,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.search, title: 'Search'),
          FloatingNavbarItem(icon: Icons.account_circle, title: 'Profile'),
        ],
      ),
    );
  }
}
