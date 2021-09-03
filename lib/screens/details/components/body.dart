import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
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
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Buy Now',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: constPrimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {},
                  child: Text('Description'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
