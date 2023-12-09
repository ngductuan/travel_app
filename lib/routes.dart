import 'package:flutter/material.dart';
import 'package:travel_app/core/views/screens/home_screen.dart';
import 'package:travel_app/core/views/screens/hotel_booking_screen.dart';
import 'package:travel_app/core/views/screens/intro_screen.dart';
import 'package:travel_app/core/views/screens/main_app.dart';
import 'package:travel_app/core/views/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => const IntroScreen(),
  MainApp.routeName: (context) => const MainApp(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  HotelBookingScreen.routeName: (context) => const HotelBookingScreen(),
};
