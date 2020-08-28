import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/arma_model.dart';
import 'package:valorant_brasil/theme/colors_theme.dart';
import 'package:valorant_brasil/theme/text_theme.dart';

class CardArmaBack extends StatelessWidget {
  final Armas arma;
  CardArmaBack(this.arma);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(children: [
        Container(
          child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.rotationY(math.pi),
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://raw.githubusercontent.com/kauemurakami/valorant-br-api/master/images/armas/${arma.nome.toLowerCase()}.png'),
                        fit: BoxFit.cover)),
              )),
        ),
        Container(
          margin: EdgeInsets.only(left: 24.0),
          width: Get.width,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.only(top: 8.0, right: 8.0),
                width: Get.width,
                child: Text(
                  arma.descricao,
                  style: bannerArmaBack,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.0),
                height: 30,
                width: Get.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                        width: 80,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: mainColor)),
                        child: Center(
                            child: Text(
                          'Distância',
                          style: TextStyle(color: mainColor),
                        ))),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: arma.distncia.length,
                          itemBuilder: (context, index) {
                            return Container(
                                height: 70,
                                width: 80,
                                decoration: BoxDecoration(
                                    border:
                                        Border.all(width: 1, color: mainColor)),
                                child: Center(
                                  child: Text(
                                    arma.distncia[index],
                                    style: TextStyle(color: mainColor),
                                  ),
                                ));
                          }),
                    ),
                  ],
                ),
              ),
              Container(
                  height: 30,
                  width: Get.width,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, color: mainColor)),
                            child: Center(
                                child: Text(
                              'Cabeça',
                              style: TextStyle(color: mainColor),
                            ))),
                        Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: arma.dano.length,
                              itemBuilder: (context, index) {
                                return Container(
                                    height: 70,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: mainColor)),
                                    child: Center(
                                        child: Text(arma.dano[index].cabeca,
                                            style:
                                                TextStyle(color: mainColor))));
                              }),
                        ),
                      ])),
              Container(
                  height: 30,
                  width: Get.width,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, color: mainColor)),
                            child: Center(
                                child: Text(
                              'Corpo',
                              style: TextStyle(color: mainColor),
                            ))),
                        Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: arma.dano.length,
                              itemBuilder: (context, index) {
                                return Container(
                                    height: 70,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: mainColor)),
                                    child: Center(
                                        child: Text(
                                      arma.dano[index].corpo,
                                      style: TextStyle(color: mainColor),
                                    )));
                              }),
                        ),
                      ])),
              Container(
                  height: 30,
                  width: Get.width,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: 80,
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, color: mainColor)),
                            child: Center(
                                child: Text(
                              'Pernas',
                              style: TextStyle(color: mainColor),
                            ))),
                        Expanded(
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: arma.dano.length,
                              itemBuilder: (context, index) {
                                return Container(
                                    height: 70,
                                    width: 80,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 1, color: mainColor)),
                                    child: Center(
                                        child: Text(
                                      arma.dano[index].pernas,
                                      style: TextStyle(color: mainColor),
                                    )));
                              }),
                        )
                      ])),
            ],
          ),
        ),
      ]),
    );
  }
}
