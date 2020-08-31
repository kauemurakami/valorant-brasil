import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/theme/colors_theme.dart';

class BackBottomButton extends Container {
  final String text;
  BackBottomButton(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 50,
      child: RaisedButton(
        onPressed: () => Get.back(),
        color: mainColor,
        textColor: Colors.white,
        child: Text(this.text),
      ),
    );
  }
}
