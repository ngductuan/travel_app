import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/dim_constants.dart';
import 'package:travel_app/core/constants/textstyle_constant.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helpers.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  static String routeName = '/intro_screen';

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();

  Widget _buildItemIntroScreen(
      String image, String title, String des, AlignmentGeometry align) {
    return Column(
      children: [
        ImageHelper.loadFromAsset(image, height: 375, fit: BoxFit.fitHeight),
        const SizedBox(
          height: kMediumPadding * 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kMediumPadding),
          child: Column(
            children: [
              Text(
                title,
                style: TextStyles.defaultStyle.bold,
              ),
              const SizedBox(
                height: kMediumPadding,
              ),
              Text(
                des,
                style: TextStyles.defaultStyle,
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          _buildItemIntroScreen(
              AssetHelper.slide1,
              'Book a flight',
              'Found a flight that matches your destination and schedule? Book it instantly.',
              Alignment.centerLeft),
          _buildItemIntroScreen(
              AssetHelper.slide2,
              'Book a flight',
              'Found a flight that matches your destination and schedule? Book it instantly.',
              Alignment.center),
          _buildItemIntroScreen(
              AssetHelper.slide3,
              'Book a flight',
              'Found a flight that matches your destination and schedule? Book it instantly.',
              Alignment.centerRight),
        ],
      ),
    );
  }
}
