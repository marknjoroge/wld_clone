import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:world_app_clone/screens/grant.dart';

import '../utils/constants.dart';

class GrantsPage extends StatefulWidget {
  const GrantsPage({super.key});

  @override
  State<GrantsPage> createState() => _GrantsPageState();
}

class _GrantsPageState extends State<GrantsPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: kGrayColorLight,
                  borderRadius: BorderRadius.circular(25)),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(CupertinoIcons.info),
              ),
            ),
            Column(
              children: [
                const Text(
                  'NEXT GRANT IN',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  '9D 20:31:11',
                  style: kTitleText!.merge(
                    const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  color: kGrayColorLight,
                  borderRadius: BorderRadius.circular(25)),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings_outlined),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: size.width,
              padding: kPagePaddingInsets,
              child: CircularPercentIndicator(
                curve: Curves.slowMiddle,
                // linearGradient: LinearGradient(
                //     begin: Alignment.topRight,
                //     end: Alignment.bottomLeft,
                //     colors: <Color>[Color(0xFF1AB600), Color(0xFF6DD400)]),
                rotateLinearGradient: true,
                circularStrokeCap: CircularStrokeCap.round,
                radius: 175.0,
                animation: true,
                animationDuration: 1000,
                lineWidth: 16.0,
                percent: 0.6,
                center: Container(
                  padding: kPagePaddingInsets,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "WLD",
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 15.0,
                          color: kDullColorLight,
                        ),
                      ),
                      // const SizedBox(height: 5),
                      Column(
                        children: [
                          Image.asset(
                            'assets/icons/wld_bow.png',
                            height: 50,
                          ),
                          const Text(
                            "120.00",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50.0,
                              color: Colors.black,
                            ),
                          ),
                          const Text(
                            "KES 281,280 VALUE",
                            style: TextStyle(),
                          ),
                        ],
                      ),
                      // const SizedBox(height: 5),
                      const Text(
                        "30/04/23",
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ),
                backgroundColor: kGrayColorLight,
                progressColor: kPrimaryColor,
              ),
            ),
            const SizedBox(height: kPagePadding * 3),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            interpunct,
                            style: TextStyle(
                              height: 0.01,
                              color: kPrimaryColor,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(' Claimed'),
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/wld_bow.png',
                            width: 16,
                          ),
                          Text(
                            ' 87.00',
                            style: kTitleText.merge(const TextStyle(fontSize: 20)),
                          ),
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: 0.5, // Set the width of the line
                    height: 40, // Make the line fill the vertical space
                    color: Colors.grey, // Set the color of the line
                  ),
                  Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            interpunct,
                            style: TextStyle(color: kPrimaryColor),
                          ),
                          Text('Value')
                        ],
                      ),
                      Text(
                        'KES 87.0',
                        style: kTitleText.merge(const TextStyle(fontSize: 20)),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: kPagePadding * 2.8),
            Text(
              'All Grants',
              style: textTheme.bodyMedium!.merge(
                kTitleText!.merge(
                  const TextStyle(fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: kPagePadding * 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                smallCard(),
                smallCard(),
                smallCard(),
              ],
            ),
            const SizedBox(height: kPagePadding ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                smallCard(),
                smallCard(),
                smallCard(),
              ],
            ),
            const SizedBox(height: kPagePadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                smallCard(),
                smallCard(),
                smallCard(),
              ],
            ),
            const SizedBox(height: kPagePadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                smallCard(),
                smallCard(),
                smallCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget smallCard() {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const GrantPage(),
          ),
        );
      },
      child: Column(
        children: [
          // Image.asset('assets/images/grant_card.png', width: 120,),
          Container(
            width: 120,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              // color: Colors.red,
              image: const DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(
                  'assets/images/grant_card.png',
                ),
              ),
              boxShadow: [
                const BoxShadow(
                  color: kAquaColor,
                  spreadRadius: 4,
                  blurStyle: BlurStyle.solid,
                ),
              ],
            ),
          ),
          const SizedBox(height: kPagePadding / 2),
          const Text('3.00 WLD'),
        ],
      ),
    );
  }
}
