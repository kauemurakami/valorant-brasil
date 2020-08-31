import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/agente_detail/agente_detail_controller.dart';
import 'package:valorant_brasil/modules/agente_detail/widgets/habilidade_gif_widget.dart';
import 'package:valorant_brasil/theme/colors_theme.dart';
import 'package:valorant_brasil/theme/text_theme.dart';
import 'package:valorant_brasil/widgets/back_bottom_navigation.dart';

class AgenteDetailPage extends GetView<AgenteDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              color: Colors.black,
              height: Get.height,
              width: Get.width,
              child: Column(
                children: [
                  Container(
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
                                  flex: 1,
                                  child: Image.network(
                                    'https://raw.githubusercontent.com/kauemurakami/valorant-br-api/master/images/agentes/${controller.agente.nome.toLowerCase()}.png',
                                    loadingBuilder: (BuildContext context,
                                        Widget widget,
                                        ImageChunkEvent loadingProgress) {
                                      if (loadingProgress == null)
                                        return widget;
                                      return Padding(
                                        padding:
                                            const EdgeInsets.only(top: 16.0),
                                        child: Center(
                                            child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                  mainColor),
                                          value: loadingProgress
                                                      .expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  loadingProgress
                                                      .expectedTotalBytes
                                              : null,
                                        )),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Container(
                                height: 50,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount:
                                        controller.agente.habilidades.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                          margin: EdgeInsets.only(top: 8.0),
                                          width: Get.width / 4.5,
                                          child: Obx(
                                            () => FlatButton(
                                                color: controller.index == index
                                                    ? mainColor
                                                    : null,
                                                splashColor: mainColor,
                                                shape:
                                                    new RoundedRectangleBorder(
                                                        borderRadius:
                                                            new BorderRadius
                                                                    .circular(
                                                                10.0)),
                                                onPressed: () {
                                                  controller.index = index;
                                                  print(controller.index);
                                                },
                                                child: Container(
                                                  height: Get.height / 6,
                                                  child: Image.network(
                                                    'https://raw.githubusercontent.com/kauemurakami/valorant-br-api/master/images/icones_habilidade/${controller.agente.nome.toLowerCase()}-${controller.agente.habilidades[index].letra.toLowerCase()}.png',
                                                    width: 30,
                                                    height: 30,
                                                    loadingBuilder: (BuildContext
                                                            context,
                                                        Widget widget,
                                                        ImageChunkEvent
                                                            loadingProgress) {
                                                      if (loadingProgress ==
                                                          null) return widget;
                                                      return Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .only(
                                                                top: 16.0),
                                                        child: Center(
                                                            child:
                                                                CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                      Color>(
                                                                  mainColor),
                                                          value: loadingProgress
                                                                      .expectedTotalBytes !=
                                                                  null
                                                              ? loadingProgress
                                                                      .cumulativeBytesLoaded /
                                                                  loadingProgress
                                                                      .expectedTotalBytes
                                                              : null,
                                                        )),
                                                      );
                                                    },
                                                  ),
                                                )),
                                          ));
                                    })),
                          ],
                        ),
                      )),
                  Container(child: HabilidadeGif(controller.agente)),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BackBottomButton('Voltar ao menu de agentes'));
  }
}
