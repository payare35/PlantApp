import 'package:flutter/material.dart';
import 'package:plant_App/constants.dart';
import 'package:plant_App/views/home/home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: kPrimaryColor,
            scaffoldBackgroundColor: kBackgroundColor,
            textTheme:
                Theme.of(context).textTheme.apply(bodyColor: kTextColor)),
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}
