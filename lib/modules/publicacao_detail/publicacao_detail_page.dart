import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/publicacao_detail/publicacao_detail_controller.dart';
import 'package:valorant_brasil/theme/text_theme.dart';
import 'package:valorant_brasil/widgets/back_bottom_navigation.dart';

class PublicacaoDetailPage extends GetView<PublicacaoDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${controller.publicacao.titulo}',
                    style: titleAgente,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(
                      'Autor : ${controller.publicacao.autor}',
                      style: agenteBio,
                    ),
                  ),
                  Text(
                    'Data : ${controller.publicacao.data}',
                    style: agenteBio,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
                    child: Text(
                      '${controller.publicacao.conteudo}',
                      style: agenteBio,
                    ),
                  )
                ],
              )),
        ),
      ),
      bottomNavigationBar: BackBottomButton('Voltar às publicações'),
    );
  }
}
