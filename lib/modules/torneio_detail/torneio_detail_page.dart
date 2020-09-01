import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/torneio_detail/torneio_detail_controller.dart';
import 'package:valorant_brasil/theme/colors_theme.dart';
import 'package:valorant_brasil/theme/text_theme.dart';
import 'package:valorant_brasil/widgets/back_bottom_navigation.dart';

class TorneioDetailPage extends GetView<TorneioDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
            padding: EdgeInsets.all(16.0),
            width: Get.width,
            height: Get.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('${controller.torneio.titulo}', style: titleAgente),
                Text(
                  'Data de início : ${controller.torneio.dataInicio}',
                  style: agenteBio,
                ),
                Text('Inscrição : ${controller.torneio.valorIncricao}',
                    style: torneioValores),
                Text(
                    'Data limite para inscrições : ${controller.torneio.dataFim}',
                    style: agenteBio),
                Text(
                    'Quantidade de equipes : ${controller.torneio.quantidadeEquipes}',
                    style: agenteBio),
                Text('Premiação : ${controller.torneio.premiacao}',
                    style: torneioValores),
                Text('Organizador :  ${controller.torneio.realizador}',
                    style: agenteBio),
                Text(
                    'Contato Organizador :  ${controller.torneio.contatoRealizador}',
                    style: agenteBio),
                FlatButton(
                    color: mainColor,
                    onPressed: () => controller.openPaginaEvento(),
                    child: Text('Página do evento',
                        style: TextStyle(color: Colors.white)))
              ],
            )),
      ),
      bottomNavigationBar: BackBottomButton('Voltar ao menu de torneios'),
    );
  }
}
