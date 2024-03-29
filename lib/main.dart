import 'package:flutter/material.dart';
import 'package:world_app_clone/screens/dashboard.dart';
import 'package:world_app_clone/utils/constants.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        scaffoldBackgroundColor: kLightColor,
        fontFamily: GoogleFonts.karla().fontFamily,
        useMaterial3: true,
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: kDullColor),
        ),
      ),
      home: const DashboardPage(),
    );
  }
}
