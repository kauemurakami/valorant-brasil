import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/agentes/agentes_controller.dart';
import 'package:valorant_brasil/modules/agentes/widgets/agente_item.dart';

class AgentesPage extends GetView<AgentesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        child: controller.listAgentes.length == null
            ? Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: controller.listAgentes.length,
                itemBuilder: (context, index) =>
                    CustomAgenteItem(controller.listAgentes[index])),
      ),
    );
  }
}
