import 'package:flutter/material.dart';

import '../../../constants.dart';

class BuyNowAndDescriptionOnDetailsPage extends StatelessWidget {
  const BuyNowAndDescriptionOnDetailsPage({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
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
            onPressed: () {},
            child: Text('Description'),
          ),
        )
      ],
    );
  }
}
