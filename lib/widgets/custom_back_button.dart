import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/theme/colors_theme.dart';

class CustomButtonBack extends Container {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: mainColor,
          size: 40,
        ),
        onPressed: () => Get.back());
  }
}
