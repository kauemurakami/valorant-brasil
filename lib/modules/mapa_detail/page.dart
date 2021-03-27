import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/mapa_detail/controller.dart';
import 'package:valorant_brasil/theme/colors_theme.dart';
import 'package:valorant_brasil/theme/text_theme.dart';
import 'package:valorant_brasil/widgets/back_bottom_navigation.dart';

class MapaDetailPage extends GetView<MapaDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 8.0, left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(children: [
                  Image.network(
                    'https://raw.githubusercontent.com/kauemurakami/valorant-api/master/images/mapas/${controller.mapa.nome.toLowerCase()}.png',
                    loadingBuilder: (BuildContext context, Widget widget,
                        ImageChunkEvent loadingProgress) {
                      if (loadingProgress == null) return widget;
                      return Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Center(
                            child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(mainColor),
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes
                              : null,
                        )),
                      );
                    },
                  ),
                  Text(
                    '${controller.mapa.nome}',
                    style: titleAgente,
                  ),
                ]),
                Container(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(
                    '${controller.mapa.descricao}',
                    style: habilidadeDescricao,
                  ),
                ),
                Text(
                  'Melhores Agentes',
                  style: titleAgente,
                ),
                Container(
                  height: 50,
                  width: Get.width,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: controller.mapa.melhoresAgentes.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            ' ${controller.mapa.melhoresAgentes[index]}',
                            style: TextStyle(
                                fontSize: 24.0,
                                color:
                                    index % 2 == 0 ? Colors.white : mainColor),
                          ),
                        );
                      }),
                ),
                Text(
                  'Dicas',
                  style: titleAgente,
                ),
                Container(
                  width: Get.width,
                  child: ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.mapa.dicas.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            '- ${controller.mapa.dicas[index]}',
                            style: TextStyle(
                                fontSize: 16.0,
                                color:
                                    index % 2 == 0 ? Colors.white : mainColor),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BackBottomButton('Voltar ao menu de mapas'),
    );
  }
}
