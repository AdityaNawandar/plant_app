import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'buy_now_and_description_on_details_screen.dart';
import 'image_and_icons_on_details_screen.dart';
import 'title_and_price_on_details_screen.dart';

class Body extends StatelessWidget {
  //const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIconsOnDetailsScreen(size: size),
          TitleAndPriceOnDetailsScreen(
            plantName: 'Angelica',
            country: 'Russia',
            price: 440,
          ),
          SizedBox(
            height: constDefaultPadding,
          ),
          BuyNowAndDescriptionOnDetailsPage(size: size),
        ],
      ),
    );
  }
}
