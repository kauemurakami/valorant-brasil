import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/mapa_detail/mapa_detail_controller.dart';
import 'package:valorant_brasil/theme/text_theme.dart';

class MapaDetailPage extends GetView<MapaDetailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      controller.mapa.nome,
                      style: titleAgente,
                    ),
                    Text('Vantagem : ${controller.mapa.vantagem}',
                        style: TextStyle(fontSize: 24.0, color: Colors.grey)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
