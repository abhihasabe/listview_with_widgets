import 'package:flutter/material.dart';
import 'package:quicsolv_assignment/screens/splash_screen.dart';
import 'package:quicsolv_assignment/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quicsolv Assignment',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: kPrimaryLightColor),
      home: SplashScreen(),
    );
  }
}
