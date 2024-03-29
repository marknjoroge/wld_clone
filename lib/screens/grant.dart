import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:world_app_clone/components/grant_card.dart';

import '../utils/constants.dart';

class GrantPage extends StatefulWidget {
  const GrantPage({super.key});

  @override
  State<GrantPage> createState() => _GrantPageState();
}

class _GrantPageState extends State<GrantPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: kPagePaddingInsets,
            child: RotatedBox(
              quarterTurns: 1,
              child: Center(child: grantCard(context)),
            ),
          ),
          const SizedBox(height: kPagePadding),
          Text('Mar 26, 2024 Grant',
            style: textTheme.headlineLarge!.merge(
              TextStyle(fontWeight: FontWeight.w900),
            ),
          ),
          const SizedBox(height: kPagePadding / 4),
          Text('Mar 26, 2024 Grant'),

        ],
      ),
    );
  }
}
