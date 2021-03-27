import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/publicacoes/controller.dart';
import 'package:valorant_brasil/modules/publicacoes/widgets/publicacao_card.dart';
import 'package:valorant_brasil/widgets/back_bottom_navigation.dart';
import 'package:valorant_brasil/widgets/custom_loading.dart';

class PublicacoesPage extends StatefulWidget {
  @override
  _TorneiosPageState createState() => _TorneiosPageState();
}

class _TorneiosPageState extends State<PublicacoesPage> {
  final controller = Get.put(PublicacoesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(8.0),
        height: Get.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.cover)),
        width: Get.width,
        child: Obx(() => controller.publicacoes.length < 1
            ? CustomLoading()
            : ListView.builder(
                itemCount: controller.publicacoes.length,
                itemBuilder: (context, index) {
                  return PublicacaoCard(controller.publicacoes[index]);
                },
              )),
      ),
      bottomNavigationBar: BackBottomButton('Voltar ao menu inicial'),
    );
  }
}
