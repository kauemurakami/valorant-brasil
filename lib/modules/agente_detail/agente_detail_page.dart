import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/agente_detail/agente_detail_controller.dart';
import 'package:valorant_brasil/modules/agente_detail/widgets/habilidade_gif_widget.dart';
import 'package:valorant_brasil/theme/colors_theme.dart';
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
                    child: Column(
                      children: [
                        Row(
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
                                  style: TextStyle(
                                      fontSize: 24.0, color: Colors.grey),
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
                        Expanded(
                            flex: 1,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: controller.agente.habilidades.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    child: FlatButton(
                                      splashColor: mainColor,
                                      shape: new RoundedRectangleBorder(
                                          side: BorderSide(
                                              style: BorderStyle.solid,
                                              color: mainColor,
                                              width: 1),
                                          borderRadius:
                                              new BorderRadius.circular(50.0)),
                                      onPressed: () {
                                        controller.index = index;
                                        print(controller.index);
                                      },
                                      child: Text(
                                        '${controller.agente.habilidades[index].letra}',
                                        style: agenteBio,
                                      ),
                                    ),
                                  );
                                }))
                      ],
                    ),
                  )),
              Container(child: HabilidadeGif(controller.agente))
            ],
          ),
        ),
      ),
    );
  }
}
