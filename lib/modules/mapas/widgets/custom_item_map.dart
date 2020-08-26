import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parallax_image/parallax_image.dart';
import 'package:valorant_brasil/routes/pages.dart';
import 'package:valorant_brasil/theme/colors_theme.dart';
import 'package:valorant_brasil/theme/text_theme.dart';

class CustomMapItem extends InkWell {
  final String map;
  CustomMapItem(this.map);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        highlightColor: mainColor,
        splashColor: mainColor,
        onTap: () => Get.toNamed(Routes.MAP_DETAIL, arguments: this.map),
        child: Container(
          width: Get.width,
          child: new ParallaxImage(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Center(
                child: Text(
                  map,
                  style: listAgents,
                ),
              ),
            ),
            extent: 100.0,
            image: new AssetImage(
              'assets/images/bg.jpg',
            ),
          ),
        ));
  }
}
