import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    Key? key,
    this.sectionTitle = '',
    this.showMore,
  }) : super(key: key);
  final String sectionTitle;
  final Function? showMore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: constDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(titleText: sectionTitle),
          Spacer(),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: constPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
            child: Text(
              'more',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  const TitleWithCustomUnderline({
    Key? key,
    this.titleText = '',
  }) : super(key: key);

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: constDefaultPadding / 4),
            child: Text(
              titleText,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: constDefaultPadding / 4),
              height: 7,
              color: constPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
