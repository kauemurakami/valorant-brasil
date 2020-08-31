import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/armas/widgets/card_arma.dart';
import 'package:valorant_brasil/widgets/back_bottom_navigation.dart';
import 'package:valorant_brasil/widgets/custom_loading.dart';

import 'armas_controller.dart';

class ArmasPage extends GetView<ArmasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Obx(
          () => controller.armas.length < 1
              ? CustomLoading()
              : Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/bg.jpg'),
                          fit: BoxFit.cover,
                          repeat: ImageRepeat.repeatY)),
                  height: Get.height,
                  width: Get.width,
                  child: ListView.builder(
                      itemCount: controller.armas.length,
                      itemBuilder: (context, index) {
                        return CardArma(controller.armas[index]);
                      })),
        ),
      ),
      bottomNavigationBar: BackBottomButton('Voltar ao menu inicial'),
    );
  }
}
