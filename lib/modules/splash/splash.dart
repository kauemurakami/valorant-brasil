import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/routes/pages.dart';
import 'package:valorant_brasil/theme/colors_theme.dart';
import 'package:valorant_brasil/theme/text_theme.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    super.initState();
    Future.delayed(
        Duration(milliseconds: 2500), () => Get.offAllNamed(Routes.HOME));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        color: bgSplash,
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/splash.gif',
            ),
            Container(
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                'Valorant Brasil Hu3',
                style: splashText,
              ),
            )
          ],
        ),
      ),
    );
  }
}
