import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/torneio_model.dart';
import 'package:valorant_brasil/routes/pages.dart';
import 'package:valorant_brasil/theme/colors_theme.dart';
import 'package:valorant_brasil/theme/text_theme.dart';

class TorneioCard extends Container {
  final Torneios torneio;
  TorneioCard(this.torneio);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: NetworkImage(torneio.imagemTorneio), fit: BoxFit.cover)),
      height: Get.width / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            torneio.titulo,
            style: torneioTitle,
          ),
          Text(
            'Início do torneio : ${torneio.dataInicio}',
            style: torneioDados,
          ),
          Text(
            'Inscrição ${torneio.valorIncricao}',
            style: torneioValores,
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: FlatButton(
                color: mainColor,
                onPressed: () =>
                    Get.toNamed(Routes.TORNEIO_DETAIL, arguments: this.torneio),
                child: Text(
                  'Mais informações',
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
