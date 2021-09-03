import 'package:flutter/material.dart';

import '../../../constants.dart';

class FeaturedPlantCard extends StatelessWidget {
  const FeaturedPlantCard({
    Key? key,
    this.showPlantDetails,
    this.imageUrl = '',
  }) : super(key: key);

  final String imageUrl;
  final Function? showPlantDetails;

  @override
  Widget build(BuildContext context) {
    //get total height and width of screen
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => showPlantDetails,
      child: Container(
        margin: EdgeInsets.only(
          left: constDefaultPadding,
          top: constDefaultPadding / 2,
          bottom: constDefaultPadding / 2,
          //right: constDefaultPadding,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(imageUrl),
          ),
        ),
      ),
    );
  }
}

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturedPlantCard(
            imageUrl: 'assets/images/bottom_img_1.png',
            showPlantDetails: () {},
          ),
          FeaturedPlantCard(
            imageUrl: 'assets/images/bottom_img_2.png',
            showPlantDetails: () {},
          ),
        ],
      ),
    );
  }
}
