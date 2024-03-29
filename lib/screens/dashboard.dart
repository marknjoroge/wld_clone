import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:world_app_clone/screens/grants.dart';
import 'package:world_app_clone/screens/wallet.dart';
import 'package:world_app_clone/screens/world_id.dart';

import '../utils/constants.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 1;
  static const List<Widget> _widgetOptions = <Widget>[
    // AllStatuses(),
    // SavedStatuses(),
    WalletPage(),
    WorldIDPage(),
    GrantsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            // activeIcon: Icon(CupertinoIcons.),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_circle_fill),
            // activeIcon: Icon(CupertinoIcons.square_favorites_alt_fill),
            label: 'World ID',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.list_bullet_below_rectangle),
            // activeIcon: Icon(Icons.add_box_rounded),
            label: 'Grants',
          ),
        ],
        selectedIconTheme: CupertinoIconThemeData(
          size: 28,
        ),
        unselectedIconTheme: CupertinoIconThemeData(
          size: 28,
        ),
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: kDullColorLight,
        // iconSize: 40,
        onTap: _onItemTapped,
        elevation: 5,
      ),
    );
  }
}
