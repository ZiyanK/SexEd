import 'package:flutter/material.dart';
import 'package:sex_ed/ui_utils/constants.dart';

class SplashScreen extends StatefulWidget {
  static String id = "splash_screen";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double device_height = MediaQuery.of(context).size.height;
    double device_width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          height: device_height,
          width: device_width,
          decoration: kBackgroundDecor,
          child: Center(
            child: Image.asset(
              "images/sex_splash_screen.png",
            ),
          ),
        ),
      ),
    );
  }
}
