import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

import 'featured_plants.dart';
import 'header_with_searchbox.dart';
import 'recommended_plants.dart';
import 'section_title_with_more_button.dart';

class Body extends StatelessWidget {
  //const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //get total height and width of screen
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(
            sectionTitle: 'Recommended',
            showMore: () {},
          ),
          RecommendedPlants(),
          TitleWithMoreButton(
            sectionTitle: 'Featured Plants',
            showMore: () {},
          ),
          FeaturedPlants(),
          SizedBox(
            height: constDefaultPadding,
          )
        ],
      ),
    );
  }
}
