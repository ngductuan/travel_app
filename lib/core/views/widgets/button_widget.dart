import 'package:flutter/material.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dim_constants.dart';
import 'package:travel_app/core/constants/textstyle_constant.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, required this.title, this.ontap});

  final String title;
  final Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kMediumPadding),
        gradient: Gradients.defaultGradientBackground,
      ),
      alignment: Alignment.center,
      child: Text(title, style: TextStyles.defaultStyle.bold.whiteTextColor,),
    );
  }
}
