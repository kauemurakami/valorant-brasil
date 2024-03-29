import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/home/page.dart';
import 'package:valorant_brasil/routes/pages.dart';
import 'package:valorant_brasil/theme/app_theme.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fadeIn,
    home: HomePage(),
    getPages: AppPages.pages,
    initialRoute: Routes.SPLASH,
    theme: appThemeData,
  ));
}
