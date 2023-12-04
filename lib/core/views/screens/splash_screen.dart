import 'package:flutter/material.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helpers.dart';
import 'package:travel_app/core/helpers/local_storage_helper.dart';
import 'package:travel_app/core/views/screens/intro_screen.dart';
import 'package:travel_app/core/views/screens/main_app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static String routeName = '/splash_screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  void _routeIntroScr(BuildContext context) async {
    final ignoreSplash = LocalStorageHelper.getValue('ignoreSplash') as bool?;
    await Future.delayed(const Duration(milliseconds: 2000));
    // print('abc3');
    // BuildContext context = this.context;

    // Navigator.pushReplacement(
    //     context, MaterialPageRoute(builder: (context) => const IntroScreen()));
    // Navigator.of(context).push()
    if(ignoreSplash != null && ignoreSplash){
      if(context.mounted){
        Navigator.pushNamed(context, MainApp.routeName);
      }
    }else{
      LocalStorageHelper.setValue('ignoreSplash', true);
      if(context.mounted){
        Navigator.pushNamed(context, IntroScreen.routeName);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    _routeIntroScr(context);
    return Stack(
      children: [
        Positioned.fill(
            child: ImageHelper.loadFromAsset(
          AssetHelper.backgroundSplash,
          fit: BoxFit.fitWidth,
        )),
        Positioned.fill(
            child: ImageHelper.loadFromAsset(
          AssetHelper.circleSplash,
        ))
      ],
    );
  }
}
