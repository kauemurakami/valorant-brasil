import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/agentes/agentes_controller.dart';
import 'package:valorant_brasil/modules/agentes/widgets/agente_item.dart';
import 'package:valorant_brasil/widgets/custom_back_button.dart';
import 'package:valorant_brasil/widgets/custom_loading.dart';

class AgentesPage extends GetView<AgentesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: [
          Container(
            width: Get.width,
            child: Obx(
              () => controller.listAgentes.length < 12
                  ? CustomLoading()
                  : ListView.builder(
                      itemCount: controller.listAgentes.length,
                      itemBuilder: (context, index) =>
                          CustomAgenteItem(controller.listAgentes[index])),
            ),
          ),
          Positioned(top: 30.0, left: 15.0, child: CustomButtonBack())
        ]));
  }
}
