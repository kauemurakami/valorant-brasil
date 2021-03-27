import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/armas/controller.dart';
import 'package:valorant_brasil/modules/armas/widgets/card_arma.dart';
import 'package:valorant_brasil/widgets/back_bottom_navigation.dart';
import 'package:valorant_brasil/widgets/custom_loading.dart';

class ArmasPage extends GetView<ArmasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: this.controller.obx(
              (state) => Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/bg.jpg'),
                          fit: BoxFit.cover,
                          repeat: ImageRepeat.repeatY)),
                  height: Get.height,
                  width: Get.width,
                  child: ListView.builder(
                      itemCount: state.length,
                      itemBuilder: (context, index) {
                        return CardArma(state[index]);
                      })),
              onLoading: CustomLoading(),
              onError: (error) => Center(child: Text(error)),
            ),
      ),
      bottomNavigationBar: BackBottomButton('Voltar ao menu inicial'),
    );
  }
}
