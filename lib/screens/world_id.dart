import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_app_clone/utils/constants.dart';

class WorldIDPage extends StatefulWidget {
  const WorldIDPage({super.key});

  @override
  State<WorldIDPage> createState() => _WorldIDPageState();
}

class _WorldIDPageState extends State<WorldIDPage> {
  PageController _appsPageController = PageController(
    viewportFraction: 0.9,
  );

  List<Widget> pages = [];
  int _currentPage = 0;

  void _goToPage(int page) {
    _appsPageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _appsPageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;
    pages = [
      list1Page(context),
      list1Page(context),
    ];
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
                icon: const Icon(CupertinoIcons.qrcode_viewfinder),
              ),
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
            const SizedBox(height: kPagePadding),
            Container(
              padding: kPagePaddingInsets,
              child: Container(
                width: size.width - (kPagePadding * 2),
                height: (size.width - (kPagePadding * 2)) * (454 / 338),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kBorderRadius / 2),
                    bottomLeft: Radius.circular(kBorderRadius / 2),
                    topRight: Radius.circular(kBorderRadius),
                    bottomRight: Radius.circular(kBorderRadius),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image:
                        AssetImage('assets/images/world_id_passport_front.png'),
                  ),
                ),
                // child: Image.asset(name),
              ),
            ),
            const SizedBox(height: kPagePadding),
            Padding(
              padding: const EdgeInsets.all(kPagePadding / 2),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(kPagePadding / 2),
                      child: Container(
                        padding: const EdgeInsets.all(kPagePadding / 2),
                        decoration: BoxDecoration(
                          color: kLightColor,
                          boxShadow: [
                            BoxShadow(
                              color: kGrayColorLight,
                              spreadRadius: 3,
                              blurStyle: BlurStyle.solid,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(kBorderRadius),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(900),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/icons/wld_wob.png',
                                      ),
                                    ),
                                  ),
                                  // child: Image.asset(

                                  //   'assets/icons/wld_wob1.png',
                                  //   width: 30,
                                  // ),
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: kPagePadding / 3,
                                      vertical: kPagePadding / 8),
                                  decoration: BoxDecoration(
                                    color: kGrayColorLight,
                                    borderRadius:
                                        BorderRadius.circular(kBorderRadius),
                                  ),
                                  child: Text(
                                    '-3.7%',
                                    style:
                                        textTheme.bodySmall!.merge(kTitleText),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: kPagePadding),
                            Text(
                              'Ksh 1,172',
                              style: textTheme.bodyMedium!.merge(kTitleText),
                            ),
                            const SizedBox(height: kPagePadding / 4),
                            Text('WLD Currency'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(kPagePadding / 2),
                      child: Container(
                        padding: const EdgeInsets.all(kPagePadding / 2),
                        decoration: BoxDecoration(
                          color: kLightColor,
                          boxShadow: [
                            BoxShadow(
                              color: kGrayColorLight,
                              spreadRadius: 3,
                              blurStyle: BlurStyle.solid,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(kBorderRadius),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    // image: DecorationImage(
                                    //   image: AssetImage(
                                    //     'assets/icons/wld_wob.png',
                                    //   ),
                                    // ),
                                  ),
                                  child: Image.asset(
                                    'assets/icons/globe.png',
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: kPagePadding),
                            Text(
                              '4,595,085',
                              style: textTheme.bodyMedium!.merge(kTitleText),
                            ),
                            const SizedBox(height: kPagePadding / 4),
                            Text('Verified World ID'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: kPagePadding * 2),
            Text(
              'Explore World ID Apps',
              style: textTheme.bodyMedium!.merge(kTitleText),
            ),
            const SizedBox(height: 4),
            Text('Verify as a unique human with World ID'),
            const SizedBox(height: kPagePadding),
            SizedBox(
              height: 300,
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                    child: PageView(
                      controller: _appsPageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _currentPage = page;
                        });
                      },
                      children: pages,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: kPagePadding),
            Container(
              padding: kPagePaddingInsets,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                color: kPurpleGrayColor,
              ),
              child: Icon(
                CupertinoIcons.creditcard,
                color: kIndigoColor,
              ),
            ),
            const SizedBox(height: kPagePadding),
            Text(
              'About World ID',
              style: kTitleText,
            ),
            // const SizedBox(height: kPagePadding / 3),
            Padding(
              padding: kPagePaddingInsets,
              child: Text(
                kAboutDesc,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: kPagePadding),
          ],
        ),
      ),
    );
  }

  Widget list1Page(BuildContext context) {
    return Column(
      children: [
        listItem(context),
        divider(context),
        listItem(context),
        divider(context),
        listItem(context),
      ],
    );
  }

  Container listItem(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: kPagePadding),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
          width: 45,
          height: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kBorderRadius),
              image: DecorationImage(
                image: AssetImage('assets/icons/wld_wob.png'),
              ),
            ),
          ),
          const SizedBox(width: kPagePadding / 2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Scan to connect',
                style: textTheme.bodyMedium!.merge(kTitleText),
              ),
              Text('Use World ID in another app')
            ],
          )
        ],
      ),
    );
  }
}

Widget divider(context) {
  return Container(
    height: .5,
    width: MediaQuery.of(context).size.width * 0.75,
  );
}
