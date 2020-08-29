import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/home/home_binding.dart';
import 'package:valorant_brasil/modules/splash/splash_page.dart';
import 'package:valorant_brasil/routes/pages.dart';

import 'modules/home/home_page.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    defaultTransition: Transition.fadeIn,
    home: HomePage(),
    getPages: AppPages.pages,
    initialRoute: Routes.SPLASH,
  ));
}
