import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/mapas/controller.dart';
import 'package:valorant_brasil/modules/mapas/widgets/custom_item_map.dart';
import 'package:valorant_brasil/widgets/back_bottom_navigation.dart';
import 'package:valorant_brasil/widgets/custom_loading.dart';

class MapasPage extends GetView<MapasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: this.controller.obx(
            (state) => Container(
              padding: EdgeInsets.only(top: Get.height / 7),
              height: Get.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg.jpg'),
                      fit: BoxFit.cover)),
              width: Get.width,
              child: ListView.builder(
                itemCount: state.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return CustomMapItem(state[index]);
                },
              ),
            ),
            onLoading: CustomLoading(),
            onError: (error) => Center(child: Text(error)),
          ),
      bottomNavigationBar: BackBottomButton('Voltar ao menu inicial'),
    );
  }
}
