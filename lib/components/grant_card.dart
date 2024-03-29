import 'package:flutter/material.dart';
import 'package:world_app_clone/utils/constants.dart';

Widget grantCard(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  var textTheme = Theme.of(context).textTheme;
  return Container(
    height: size.width - (kPagePadding * 4),
    width: (size.width - (kPagePadding * 2)) * (355 / 254),
    // padding: kPagePaddingInsets,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(kBorderRadius),
      // color: Colors.red,
      image: DecorationImage(
        fit: BoxFit.fitHeight,
        image: AssetImage(
          'assets/images/card_bg.png',
        ),
      ),
      boxShadow: [
        BoxShadow(
          color: kAquaColor,
          spreadRadius: 4,
          blurStyle: BlurStyle.solid,
        ),
      ],
    ),
    child: Container(
      padding: kPagePaddingInsets,
      decoration: BoxDecoration(
        color: kLightBlueColor.withOpacity(0.8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ': WLD-2400031 :',
                    style: TextStyle(
                      color: kErrorColor,
                      fontWeight: FontWeight.w100,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: kPagePadding / 2),
                  Text(
                    'WORLDCOIN GRANT',
                    style: textTheme.headlineLarge!.merge(
                      TextStyle(fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
              Container(
                width: 110,
                height: 110,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icons/stamp.png'),
                      fit: BoxFit.fitWidth),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'DATE',
                style: textTheme.headlineMedium!.merge(
                  TextStyle(
                    fontWeight: FontWeight.w100,
                    color: kDullColor.withOpacity(0.4),
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '28/03/2023',
                    style: textTheme.headlineMedium!.merge(
                      TextStyle(
                        fontWeight: FontWeight.w100,
                        color: kDullColor.withOpacity(0.7),
                      ),
                    ),
                  ),
                  Container(
                    height: .5,
                    width: 250,
                    color: kDullColor.withAlpha(155),
                  )
                ],
              ),
              Text(
                'WLD',
                style: textTheme.headlineMedium!.merge(
                  TextStyle(
                    fontWeight: FontWeight.w100,
                    color: kDullColor.withOpacity(0.4),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurStyle: BlurStyle.solid,
                      blurRadius: 1,
                      color: kDullColor.withAlpha(145),
                    ),
                  ],
                ),
                child: Container(
                  color: kAquaColor,
                  padding: kPagePaddingInsets,
                  child: Text(
                    '6.00',
                    style: textTheme.headlineMedium!.merge(
                      TextStyle(
                        fontWeight: FontWeight.w100,
                        color: kDullColor.withOpacity(0.7),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'PAY TO',
                style: textTheme.headlineMedium!.merge(
                  TextStyle(
                    fontWeight: FontWeight.w100,
                    color: kDullColor.withOpacity(0.4),
                  ),
                ),
              ),
              const SizedBox(width: kPagePadding),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '0xcd...3238',
                    style: textTheme.headlineMedium!.merge(
                      TextStyle(
                        fontWeight: FontWeight.w100,
                        color: kDullColor.withOpacity(0.7),
                      ),
                    ),
                  ),
                  Container(
                    height: .5,
                    width: 250,
                    color: kDullColor.withAlpha(155),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 1),
        ],
      ),
    ),
  );
}
