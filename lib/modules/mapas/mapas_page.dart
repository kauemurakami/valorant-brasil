import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/mapas/widgets/custom_item_map.dart';
import 'package:valorant_brasil/widgets/back_bottom_navigation.dart';
import 'package:valorant_brasil/widgets/custom_loading.dart';

import 'mapas_controller.dart';

class MapasPage extends GetView<MapasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.only(top: Get.height / 7),
        height: Get.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover)),
        width: Get.width,
        child: Obx(() => controller.mapas.length < 2
            ? CustomLoading()
            : ListView.builder(
                itemCount: controller.mapas.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return CustomMapItem(controller.mapas[index]);
                },
              )),
      ),
      bottomNavigationBar: BackBottomButton('Voltar ao menu inicial'),
    );
  }
}
