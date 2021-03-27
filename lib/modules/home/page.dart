import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/home/controller.dart';
import 'package:valorant_brasil/modules/home/widgets/custom_menu_item.dart';
import 'package:valorant_brasil/theme/colors_theme.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/bgmenu.jpg'))),
          height: Get.height,
          width: Get.width,
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: Get.height / 2.7,
                    child: Image.asset(
                      'assets/images/brvav.png',
                    ),
                  ),
                  CustomContainerMenu('AGENTES', () => controller.agente()),
                  CustomContainerMenu('ARMAS', () => controller.armas()),
                  CustomContainerMenu('MAPAS', () => controller.mapas()),
                  CustomContainerMenu('TORNEIOS', () => controller.torneios()),
                  CustomContainerMenu(
                      'PUBLICAÇÕES', () => controller.publicacoes()),
                  Container(
                      margin: EdgeInsets.only(bottom: 16.0),
                      width: 300,
                      height: 80,
                      decoration: BoxDecoration(
                        border: Border.all(color: mainColor),
                      ),
                      child: FlatButton(
                        splashColor: mainColor,
                        onPressed: null,
                        child: Center(
                            child: Text(
                          'X1 - estamos trabalhando nisso',
                          style: TextStyle(color: Colors.grey),
                        )),
                      ))
                ],
              )),
        ));
  }
}
