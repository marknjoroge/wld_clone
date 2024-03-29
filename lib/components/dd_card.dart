import 'package:flutter/material.dart';

import '../utils/constants.dart';

Widget ddCard(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  TextTheme textTheme = Theme.of(context).textTheme;

  return Container(
    width: size.width - (kPagePadding * 2),
    height: (size.width - (kPagePadding * 2)) * (347 / 736),
    padding: kPagePaddingInsets,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(kBorderRadius),
      image: DecorationImage(
        image: AssetImage('assets/images/ddollars_card_bg.png'),
        fit: BoxFit.fitWidth,
      ),
    ),
    child: Row(
      children: [
        Column(
          children: [
            Text(
              'Digital Dollars',
              style: textTheme.headlineMedium!.merge(
                TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        Column(),
      ],
    ),
  );
}
