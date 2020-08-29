import 'package:flutter/material.dart';
import 'package:valorant_brasil/data/model/agentes_model.dart';
import 'package:valorant_brasil/theme/colors_theme.dart';

class HabilidadeGif extends StatelessWidget {
  final Agentes agente;
  HabilidadeGif(this.agente);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(
            'https://raw.githubusercontent.com/kauemurakami/valorant-br-api/master/gifs/habilidades/${this.agente.nome.toLowerCase()}/${this.agente.nome.toLowerCase()}-${this.agente.habilidades[0].letra.toLowerCase()}.gif',
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
          Container(child: Text('Descrição nessa porra'))
        ],
      ),
    );
  }
}
