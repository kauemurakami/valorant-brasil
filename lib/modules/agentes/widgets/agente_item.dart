import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parallax_image/parallax_image.dart';
import 'package:valorant_brasil/data/model/agentes_model.dart';
import 'package:valorant_brasil/theme/colors_theme.dart';
import 'package:valorant_brasil/theme/text_theme.dart';

class CustomAgenteItem extends StatelessWidget {
  final Agentes agente;
  CustomAgenteItem(this.agente);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        highlightColor: mainColor,
        splashColor: mainColor,
        onTap: () => print(''),
        child: Container(
          width: Get.width,
          child: new ParallaxImage(
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0, left: 16),
              child: Text(
                agente.nome,
                style: listAgents,
              ),
            ),
            extent: 100.0,
            image: new AssetImage(
              'assets/images/bg.jpg',
            ),
          ),
        ));
  }
}
