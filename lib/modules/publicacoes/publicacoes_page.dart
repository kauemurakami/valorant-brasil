import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/publicacoes/publicacoes_controller.dart';

class PublicacoesPage extends GetView<PublicacoesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('publicações'),
      ),
    );
  }
}
