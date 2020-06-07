import 'dart:async';
import 'package:flutter/material.dart';
import 'package:quicsolv_assignment/utils/loader/DotType.dart';
import 'package:quicsolv_assignment/utils/loader/Loader.dart';
import 'package:quicsolv_assignment/utils/navigation_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SplashScreen();
  }
}

class _SplashScreen extends State {
  Navigations navigations = Navigations();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () => getStringValuesSF());
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Positioned(
          child: Align(
            alignment: Alignment.center,
            child: Center(
              child: Image(
                image: AssetImage("assets/images/QuicSolv-Logo.png"),
              ),
            ),
          ),
        ),
        Positioned(
          top: 650,
          left: (MediaQuery.of(context).size.width / 2.2),
          child: Center(
            child: Loader(
              dotOneColor: Color(0xff3670f4),
              dotTwoColor: Color(0xff3670f4),
              dotThreeColor: Color(0xff3670f4),
              dotType: DotType.circle,
              duration: Duration(milliseconds: 1200),
            ),
          ),
        )
      ],
    ));
  }

  getStringValuesSF() {
    navigations.navigateToDashboardScreen(context);
  }
}
