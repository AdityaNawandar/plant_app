import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/details_screen.dart';

import '../../../constants.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendedPlantCard(
            imageUrl: 'assets/images/image_1.png',
            plantName: 'SAMANTHA',
            countryName: 'Russia',
            price: 440,
            showPlantDetails: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen()),
              );
            },
          ),
          RecommendedPlantCard(
            imageUrl: 'assets/images/image_2.png',
            plantName: 'ANGELICA',
            countryName: 'Russia',
            price: 620,
            showPlantDetails: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen()),
              );
            },
          ),
          RecommendedPlantCard(
            imageUrl: 'assets/images/image_3.png',
            plantName: 'SAMANTHA',
            countryName: 'Russia',
            price: 640,
            showPlantDetails: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailsScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    Key? key,
    this.plantName = '',
    this.countryName = '',
    this.imageUrl = '',
    this.price = 0,
    this.showPlantDetails,
    //required this.size,
  }) : super(key: key);

  final String plantName, countryName, imageUrl;
  final int price;
  final Function? showPlantDetails;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(
        left: constDefaultPadding,
        top: constDefaultPadding / 2,
        bottom: constDefaultPadding * 2.5,
        //right: constDefaultPadding,
      ),
      width: size.width * 0.4,
      child: GestureDetector(
        onTap: () => showPlantDetails!(),
        child: Column(
          children: [
            Image.asset(imageUrl),
            //GestureDetector(
            //onTap: () => showPlantDetails!(),
            //child:
            Container(
              padding: EdgeInsets.all(constDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: constPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$plantName\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: countryName,
                          style: TextStyle(
                            color: constPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: constPrimaryColor),
                  ),
                ],
              ),
            ),
            //),
          ],
        ),
      ),
    );
  }
}
