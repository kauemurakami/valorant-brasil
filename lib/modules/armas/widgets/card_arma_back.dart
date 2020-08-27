import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/arma_model.dart';
import 'package:valorant_brasil/theme/text_theme.dart';

class CardArmaBack extends StatelessWidget {
  final Armas arma;
  CardArmaBack(this.arma);
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationY(math.pi),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/arma.png'))),
            )),
      ),
      Container(
        height: 200,
        width: Get.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
              width: Get.width,
              child: Text(
                arma.descricao,
                style: bannerArmaBack,
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: arma.distncia.length,
                  itemBuilder: (context, index) {
                    return Text(arma.distncia[index]);
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: arma.dano.length,
                  itemBuilder: (context, index) {
                    return Text(arma.dano[index].cabeca);
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: arma.dano.length,
                  itemBuilder: (context, index) {
                    return Text(arma.dano[index].corpo);
                  }),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: arma.dano.length,
                  itemBuilder: (context, index) {
                    return Text(arma.dano[index].pernas);
                  }),
            )
          ],
        ),
      ),
    ]);
  }
}
