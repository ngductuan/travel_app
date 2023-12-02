import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/views/screens/splash_screen.dart';
import 'package:travel_app/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      theme: ThemeData(
        primaryColor: ColorPalette.primaryColor,
        scaffoldBackgroundColor: ColorPalette.backgroundScaffoldColor,
        colorScheme: ThemeData().colorScheme.copyWith(
              background: ColorPalette.backgroundScaffoldColor,
            ),
      ),
      debugShowCheckedModeBanner: false,
      routes: routes,
      home: const SplashScreen(),
    );
  }
}
