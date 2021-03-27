import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/torneios/torneios_controller.dart';
import 'package:valorant_brasil/modules/torneios/widgets/torneio_card.dart';
import 'package:valorant_brasil/widgets/back_bottom_navigation.dart';
import 'package:valorant_brasil/widgets/custom_loading.dart';

class TorneiosPage extends StatefulWidget {
  @override
  _TorneiosPageState createState() => _TorneiosPageState();
}

class _TorneiosPageState extends State<TorneiosPage> {
  final controller = Get.put(TorneiosController());

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
        child: Obx(() => controller.torneios.length < 1
            ? CustomLoading()
            : ListView.builder(
                itemCount: controller.torneios.length,
                itemBuilder: (context, index) {
                  return TorneioCard(controller.torneios[index]);
                },
              )),
      ),
      bottomNavigationBar: BackBottomButton('Voltar ao menu inicial'),
    );
  }
}
