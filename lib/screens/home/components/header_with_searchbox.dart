import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: constDefaultPadding * 2.5),
      height: size.height * 0.2,
      //color: Colors.black,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: constDefaultPadding,
                right: constDefaultPadding,
                bottom: 36 + constDefaultPadding),
            height: size.height * 0.2 - 27,
            decoration: BoxDecoration(
              color: constPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(children: [
              Text(
                'Hi UiShopy',
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Image.asset("assets/images/logo.png")
            ]),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: constDefaultPadding),
              padding: EdgeInsets.symmetric(horizontal: constDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 50,
                      offset: Offset(0, 10),
                      color: constPrimaryColor.withOpacity(0.23),
                    ),
                  ]),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                          color: constPrimaryColor.withOpacity(0.5),
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  SvgPicture.asset('assets/icons/search.svg')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
