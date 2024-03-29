import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_app_clone/components/crypto_card.dart';
import 'package:world_app_clone/components/dd_card.dart';
import 'package:world_app_clone/components/wld_card.dart';

import '../utils/constants.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;

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
                icon: const Icon(Icons.access_time),
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
            const SizedBox(height: kPagePadding * 3),
            Text(
              'Total Balance',
              style: textTheme.titleSmall!.merge(
                TextStyle(
                  color: kDullColor.withOpacity(0.3),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ksh ',
                  style: textTheme.headlineSmall!.merge(
                    TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                    ),
                  ),
                ),
                Text(
                  '0',
                  style: textTheme.headlineMedium!.merge(
                    TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 70,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: kPagePadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: kGrayColorLight,
                          borderRadius: BorderRadius.circular(25)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.add,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Buy',
                      style: textTheme.titleMedium,
                    ),
                  ],
                ),
                const SizedBox(width: kPagePadding),
                Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: kGrayColorLight,
                          borderRadius: BorderRadius.circular(25)),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.minus,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Sell',
                      style: textTheme.titleMedium,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: kPagePadding * 5),
            Stack(
              children: [
                Column(
                  children: [
                    ddCard(context),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: kPagePadding * 3),
                    cryptoCard(context),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: kPagePadding * 6),
                    Hero(tag: 'wld', child: wldCard(context)),
                    // const SizedBox(height: kPagePadding),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget cardTemplate(
      BuildContext context, String imgUrl, String text, Widget targetScreen,
      [Color? textColor]) {
    return Container();
  }
}
