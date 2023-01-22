import 'package:flutter/material.dart';
import 'package:parct_1eslami/home/home_screen.dart';
import 'package:parct_1eslami/home/soura_details_file/soura_details.dart';
import 'package:parct_1eslami/my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme,
      routes: {
        SouraDetailsScreen.routName: (_) => SouraDetailsScreen(),
        HOmescreen.routeName: (_) => HOmescreen(),
      },
      initialRoute: HOmescreen.routeName,
    );
  }
}
