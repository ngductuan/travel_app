import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dim_constants.dart';
import 'package:travel_app/core/views/screens/home_screen.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  static String routeName = '/main_app';

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentIndex,
        children: [
          HomeScreen(),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.brown,
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          selectedItemColor: ColorPalette.primaryColor,
          unselectedItemColor: ColorPalette.primaryColor.withOpacity(0.2),
          margin: EdgeInsets.symmetric(
              horizontal: kMediumPadding, vertical: kDefaultPadding),
          items: [
            SalomonBottomBarItem(
              icon: Icon(
                FontAwesomeIcons.house,
                size: kDefaultIconSize,
              ),
              title: Text('Home'),
            ),
            SalomonBottomBarItem(
              icon: Icon(
                FontAwesomeIcons.solidHeart,
                size: kDefaultIconSize,
              ),
              title: Text('Favorite'),
            ),
            SalomonBottomBarItem(
              icon: Icon(
                FontAwesomeIcons.briefcase,
                size: kDefaultIconSize,
              ),
              title: Text('Booking'),
            ),
            SalomonBottomBarItem(
              icon: Icon(
                FontAwesomeIcons.solidUser,
                size: kDefaultIconSize,
              ),
              title: Text('Profile'),
            ),
          ]),
    );
  }
}
