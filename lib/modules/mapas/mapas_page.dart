import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/mapas/widgets/custom_item_map.dart';
import 'package:valorant_brasil/widgets/custom_back_button.dart';

import 'mapas_controller.dart';

class MapasPage extends GetView<MapasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        padding: EdgeInsets.only(top: Get.height / 7),
        height: Get.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover)),
        width: Get.width,
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: [
            CustomMapItem('Bind'),
            CustomMapItem('Split'),
            CustomMapItem('Ascente'),
            CustomMapItem('Haven'),
          ],
        ),
      ),
      Positioned(top: 30.0, left: 15.0, child: CustomButtonBack())
    ]));
  }
}
