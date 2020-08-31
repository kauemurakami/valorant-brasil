import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/widgets/back_bottom_navigation.dart';

class TorneioDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: Get.width, height: Get.height, child: Text('torneio detalhe')),
      bottomNavigationBar: BackBottomButton('Voltar ao menu de torneios'),
    );
  }
}
