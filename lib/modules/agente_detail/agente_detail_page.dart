import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/agente_detail/agente_detail_controller.dart';
import 'package:valorant_brasil/theme/text_theme.dart';

class AgenteDetailPage extends GetView<AgenteDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          child: Column(
            children: [
              Container(
                  height: Get.height / 2,
                  color: Colors.black,
                  width: Get.width,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              controller.agente.nome,
                              style: titleAgente,
                            ),
                            Text(
                              controller.agente.classe,
                              style:
                                  TextStyle(fontSize: 24.0, color: Colors.grey),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 16.0),
                              width: Get.width / 2,
                              child: Text(
                                controller.agente.bio,
                                style: agenteBio,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Image.network(
                            'https://raw.githubusercontent.com/kauemurakami/valorant-br-api/master/images/agentes/${controller.agente.nome.toLowerCase()}.png',
                          ),
                        )
                      ],
                    ),
                  )),
              Container(
                child: Image.network(
                    'https://raw.githubusercontent.com/kauemurakami/valorant-br-api/master/gifs/habilidades/${controller.agente.nome.toLowerCase()}/${controller.agente.nome.toLowerCase()}-c.gif'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
