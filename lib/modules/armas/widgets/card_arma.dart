import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/arma_model.dart';
import 'package:valorant_brasil/modules/armas/widgets/card_arma_back.dart';
import 'package:valorant_brasil/modules/armas/widgets/card_arma_front.dart';

class CardArma extends StatelessWidget {
  final Armas arma;
  CardArma(this.arma);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
        height: 240,
        width: Get.width,
        child: FlipCard(
          front: CardArmaFront(this.arma),
          back: CardArmaBack(this.arma),
        ),
      ),
    ]);
  }
}
