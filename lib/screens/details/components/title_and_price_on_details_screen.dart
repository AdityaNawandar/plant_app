import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleAndPriceOnDetailsScreen extends StatelessWidget {
  const TitleAndPriceOnDetailsScreen({
    Key? key,
    this.plantName,
    this.country,
    this.price,
  }) : super(key: key);

  final String? plantName, country;
  final int? price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: constDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$plantName\n',
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: constTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: country,
                  style: TextStyle(
                    fontSize: 20,
                    color: constPrimaryColor,
                    fontWeight: FontWeight.w300,
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
                .headline5!
                .copyWith(color: constPrimaryColor),
          ),
        ],
      ),
    );
  }
}
