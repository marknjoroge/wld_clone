import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_app_clone/components/wld_card.dart';

import '../utils/constants.dart';

class WldPage extends StatefulWidget {
  const WldPage({super.key});

  @override
  State<WldPage> createState() => _WldPageState();
}

class _WldPageState extends State<WldPage> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: kGrayColorLight,
                  borderRadius: BorderRadius.circular(25)),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ),
            // Container(
            //   decoration: BoxDecoration(
            //       color: kGrayColorLight,
            //       borderRadius: BorderRadius.circular(25)),
            //   child: IconButton(
            //     onPressed: () {},
            //     icon: const Icon(Icons.settings_outlined),
            //   ),
            // ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          const SizedBox(height: kPagePadding),
            Hero(
              tag: 'wld',
              child: wldCard(context),
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
                          Icons.arrow_forward_rounded,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Send',
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
                          Icons.arrow_downward,
                          size: 20,
                        ),
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Receive',
                      style: textTheme.titleMedium,
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
}
