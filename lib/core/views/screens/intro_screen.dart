import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:travel_app/core/constants/dim_constants.dart';
import 'package:travel_app/core/constants/textstyle_constant.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helpers.dart';
import 'package:travel_app/core/views/widgets/button_widget.dart';

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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          alignment: align,
          child: ImageHelper.loadFromAsset(
            image,
            height: 500,
            fit: BoxFit.fitHeight,
          ),
        ),
        const SizedBox(
          height: kMediumPadding * 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kMediumPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
      body: Stack(children: [
        PageView(
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
        Positioned(
            left: kMediumPadding,
            right: kMediumPadding,
            bottom: kMediumPadding * 3,
            child: Row(
              children: [
                Expanded(
                  flex: 7,
                  child: SmoothPageIndicator(
                    controller: _pageController,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                        dotWidth: kMinPadding,
                        dotHeight: kMinPadding,
                        activeDotColor: Colors.orange),
                  ),
                ),
                const Expanded(
                  flex: 3,
                  child: ButtonWidget(title: 'Next'),
                )
              ],
            ))
      ]),
    );
  }
}
