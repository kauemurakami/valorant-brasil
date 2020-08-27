import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/arma_model.dart';
import 'package:valorant_brasil/theme/text_theme.dart';

class CardArmaFront extends StatelessWidget {
  final Armas arma;
  CardArmaFront(this.arma);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 100,
      child: Stack(children: [
        Image.asset('assets/images/arma.png'),
        Positioned(
            top: 8.0,
            left: 8.0,
            child: Container(
                child: Text(
              arma.nome,
              style: bannerArmaFront,
            ))),
        Positioned(
            bottom: 8.0,
            left: 8.0,
            child: Container(
                width: Get.width,
                child: Text(
                  arma.bio,
                  style: bannerArmaFront,
                )))
      ]),
    );
  }
}
