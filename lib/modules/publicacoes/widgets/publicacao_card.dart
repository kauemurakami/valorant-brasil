import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/publicacoes_model.dart';
import 'package:valorant_brasil/routes/pages.dart';
import 'package:valorant_brasil/theme/colors_theme.dart';
import 'package:valorant_brasil/theme/text_theme.dart';

class PublicacaoCard extends Container {
  final Publicacoes publicacao;
  PublicacaoCard(this.publicacao);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          border: Border.all(color: mainColor),
          borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.only(top: 16.0),
      height: Get.width / 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            publicacao.titulo,
            style: torneioTitle,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${publicacao.data}',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: agenteBio,
              ),
              SizedBox(
                width: 16.0,
              ),
              Text(
                '${publicacao.autor}',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: agenteBio,
              ),
            ],
          ),
          Text(
            '${publicacao.conteudo}',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: agenteBio,
          ),
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: FlatButton(
                color: mainColor,
                onPressed: () => Get.toNamed(Routes.PUBLICACAO_DETAIL,
                    arguments: this.publicacao),
                child: Text(
                  'Publicação completa',
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
