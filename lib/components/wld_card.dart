import 'package:flutter/material.dart';
import 'package:world_app_clone/screens/wld_page.dart';
import 'package:world_app_clone/utils/constants.dart';

Widget wldCard(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  TextTheme textTheme = Theme.of(context).textTheme;

  return GestureDetector(
    onTap: () => Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const WldPage(),
      ),
    ),
    child: Container(
      width: size.width - (kPagePadding * 2),
      height: (size.width - (kPagePadding * 2)) * (319 / 705),
      padding: kPagePaddingInsets,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        image: DecorationImage(
          image: AssetImage('assets/images/wld_card_bg.png'),
          fit: BoxFit.fitWidth,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Worldcoin',
                style: textTheme.headlineMedium!.merge(
                  TextStyle(
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                'The new global currency',
                style: textTheme.bodyMedium!.merge(
                  TextStyle(
                    // fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Ksh ',
                    style: textTheme.headlineSmall!.merge(
                      TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Text(
                    '0',
                    style: textTheme.headlineMedium!.merge(
                      TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
