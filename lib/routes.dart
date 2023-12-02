import 'package:flutter/material.dart';
import 'package:travel_app/core/views/screens/intro_screen.dart';
import 'package:travel_app/core/views/screens/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  IntroScreen.routeName: (context) => const IntroScreen(),
};
