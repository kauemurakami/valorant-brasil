import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/arma_model.dart';
import 'package:valorant_brasil/theme/colors_theme.dart';
import 'package:valorant_brasil/theme/text_theme.dart';

class CardArmaFront extends StatelessWidget {
  final Armas arma;
  CardArmaFront(this.arma);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 250,
      child: Stack(children: [
        Image.network(
          'https://raw.githubusercontent.com/kauemurakami/valorant-br-api/master/images/armas/${arma.nome.toLowerCase()}.png',
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
        Positioned(
            top: 8.0,
            left: 8.0,
            child: Container(
                child: Text(
              arma.nome,
              style: bannerArmaFront,
            ))),
        Positioned(
            top: 32.0,
            left: 8.0,
            child: Container(
                child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tipo',
                          style: agenteBio,
                        ),
                        Text(
                          'Cadência',
                          style: agenteBio,
                        ),
                        Text(
                          'Penetração',
                          style: agenteBio,
                        ),
                        Text(
                          'Pente',
                          style: agenteBio,
                        ),
                        Text(
                          'Portabilidade',
                          style: agenteBio,
                        ),
                        Text(
                          'Recarregar',
                          style: agenteBio,
                        ),
                        Text(
                          'Equipar',
                          style: agenteBio,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            arma.tipo,
                            style: bannerArmaFront,
                          ),
                          Text(
                            arma.cadencia,
                            style: bannerArmaFront,
                          ),
                          Text(
                            arma.penetraoParede,
                            style: bannerArmaFront,
                          ),
                          Text(
                            arma.pente,
                            style: bannerArmaFront,
                          ),
                          Text(
                            arma.velocidadeCorrida,
                            style: bannerArmaFront,
                          ),
                          Text(
                            arma.velocidadeRecarregar,
                            style: bannerArmaFront,
                          ),
                          Text(
                            arma.velocidadeEquipar,
                            style: bannerArmaFront,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ))),
      ]),
    );
  }
}
