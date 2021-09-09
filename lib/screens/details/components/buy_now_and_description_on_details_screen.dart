import 'package:flutter/material.dart';
import 'package:plant_app/screens/details/components/plant_description.dart';

import '../../../constants.dart';

class BuyNowAndDescriptionOnDetailsPage extends StatelessWidget {
  const BuyNowAndDescriptionOnDetailsPage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    void _showDescription() {
      showModalBottomSheet(
          context: context,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          builder: (context) {
            return Container(
              height: MediaQuery.of(context).size.height * 0.75,
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
              child: PlantDescription(),
            );
          });
    }

    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 64,
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
            onPressed: () {
              _showDescription();
            },
            child: Text('Description'),
          ),
        )
      ],
    );
  }
}
