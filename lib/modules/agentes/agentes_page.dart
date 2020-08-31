import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/agentes/agentes_controller.dart';
import 'package:valorant_brasil/modules/agentes/widgets/agente_item.dart';
import 'package:valorant_brasil/widgets/back_bottom_navigation.dart';
import 'package:valorant_brasil/widgets/custom_loading.dart';

class AgentesPage extends GetView<AgentesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
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
      bottomNavigationBar: BackBottomButton('Voltar ao menu inicial'),
    );
  }
}
