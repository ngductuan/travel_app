import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/constants/color_constants.dart';
import 'package:travel_app/core/constants/dim_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helpers.dart';

class AppBarContainerWdiget extends StatelessWidget {
  const AppBarContainerWdiget(
      {super.key,
      required this.child,
      this.titleString,
      this.title,
      this.implementLeading = false,
      this.implementTrailing = false});

  final Widget child;
  final Widget? title;
  final String? titleString;
  final bool implementLeading;
  final bool implementTrailing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          height: 186,
          child: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            elevation: 0,
            toolbarHeight: 90,
            backgroundColor: ColorPalette.backgroundScaffoldColor,
            title: title ??
                Row(
                  children: [
                    if (implementLeading)
                      Container(
                        padding: EdgeInsets.all(kItemPadding),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(kDefaultPadding)),
                            color: Colors.white),
                        child: Icon(
                          FontAwesomeIcons.arrowLeft,
                          color: Colors.black,
                          size: kDefaultIconSize,
                        ),
                      ),
                    Expanded(
                        child: Center(
                      child: Column(
                        children: [
                          Text(
                            titleString ?? '',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    )),
                    if (implementTrailing)
                      Container(
                        padding: EdgeInsets.all(kItemPadding),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.circular(kDefaultPadding)),
                            color: Colors.white),
                        child: Icon(
                          FontAwesomeIcons.bars,
                          color: Colors.black,
                          size: kDefaultIconSize,
                        ),
                      ),
                  ],
                ),
            flexibleSpace: Stack(
              children: [
                Container(
                    decoration: BoxDecoration(
                  gradient: Gradients.defaultGradientBackground,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(35)),
                )),
                Positioned(
                  top: 0,
                  left: 0,
                  child: ImageHelper.loadFromAsset(AssetHelper.oval_1),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: ImageHelper.loadFromAsset(AssetHelper.oval_2),
                ),
              ],
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 156),
            padding: EdgeInsets.symmetric(horizontal: kMediumPadding),
            child: child)
      ]),
    );
  }
}
