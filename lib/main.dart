import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/home/home_binding.dart';
import 'package:valorant_brasil/routes/pages.dart';

import 'modules/home/home_page.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
    initialBinding: HomeBinding(),
    getPages: AppPages.pages,
    initialRoute: Routes.HOME,
  ));
}
