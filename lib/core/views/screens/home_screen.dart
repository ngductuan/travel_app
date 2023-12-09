import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travel_app/core/constants/dim_constants.dart';
import 'package:travel_app/core/helpers/asset_helper.dart';
import 'package:travel_app/core/helpers/image_helpers.dart';
import 'package:travel_app/core/views/screens/hotel_booking_screen.dart';
import 'package:travel_app/core/views/widgets/app_bar_container_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static String routeName = '/home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Widget _buildItemCategory(
      Widget icon, Color color, Function() onTap, String title) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              vertical: kMediumPadding,
            ),
            decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                borderRadius: BorderRadius.circular(kItemPadding)),
            child: Padding(
              padding:
                  title == 'All' ? EdgeInsets.only(left: 8) : EdgeInsets.zero,
              child: Center(
                child: Transform.scale(
                  scale: title == 'All' ? 1.7 : 1.3,
                  child: icon,
                ),
              ),
            ),
          ),
          SizedBox(
            height: kItemPadding,
          ),
          Text(title)
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppBarContainerWdiget(
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Hi Jame!',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: kMediumPadding,
                  ),
                  Text(
                    'Where are you going next?',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Icon(
                FontAwesomeIcons.bell,
                size: kDefaultIconSize,
                color: Colors.white,
              ),
              SizedBox(
                width: kTopPadding,
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kItemPadding),
                    color: Colors.white),
                padding: EdgeInsets.all(kMinPadding),
                child: ImageHelper.loadFromAsset(AssetHelper.person),
              )
            ],
          ),
        ),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search your destination',
                prefixIcon: Padding(
                  padding: EdgeInsets.all(kTopPadding),
                  child: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    color: Colors.black,
                    size: kDefaultPadding,
                  ),
                ),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(kItemPadding)),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: kItemPadding),
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Row(children: [
              Expanded(
                child: _buildItemCategory(
                    ImageHelper.loadFromAsset(
                      AssetHelper.icoHotel,
                      width: kBottomBarIconSize,
                      height: kBottomBarIconSize,
                    ),
                    Color(0xffFE9C5E), () {
                  Navigator.of(context).pushNamed(HotelBookingScreen.routeName);
                }, 'Hotels'),
              ),
              SizedBox(width: kDefaultPadding),
              Expanded(
                child: _buildItemCategory(
                    ImageHelper.loadFromAsset(
                      AssetHelper.icoPlane,
                      width: kBottomBarIconSize,
                      height: kBottomBarIconSize,
                    ),
                    Color(0xffF77777),
                    () {},
                    'Flights'),
              ),
              SizedBox(width: kDefaultPadding),
              Expanded(
                child: _buildItemCategory(
                    ImageHelper.loadFromAsset(
                      AssetHelper.icoHotelPlane,
                      width: kBottomBarIconSize,
                      height: kBottomBarIconSize,
                    ),
                    Color(0xff3EC8BC),
                    () {},
                    'All'),
              ),
            ]),
          ],
        ));
  }
}
