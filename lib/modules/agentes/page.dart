import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/agentes/controller.dart';
import 'package:valorant_brasil/modules/agentes/widgets/agente_item.dart';
import 'package:valorant_brasil/widgets/back_bottom_navigation.dart';
import 'package:valorant_brasil/widgets/custom_loading.dart';

class AgentesPage extends GetView<AgentesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: this.controller.obx(
            (state) => Container(
              width: Get.width,
              child: ListView.builder(
                  itemCount: state.length,
                  itemBuilder: (context, index) =>
                      CustomAgenteItem(controller.state[index])),
            ),
            onLoading: CustomLoading(),
            onError: (error) => Center(child: Text(error)),
          ),
      bottomNavigationBar: BackBottomButton('Voltar ao menu inicial'),
    );
  }
}
