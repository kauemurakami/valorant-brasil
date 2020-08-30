import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/home/widgets/custom_menu_item.dart';

import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/bgmenu.jpg'))),
                width: Get.width,
                height: Get.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/brvav.png'),
                    CustomContainerMenu('AGENTES', () => controller.agente()),
                    CustomContainerMenu('ARMAS', () => controller.armas()),
                    CustomContainerMenu('MAPAS', () => controller.mapas()),
                    CustomContainerMenu(
                        'TORNEIOS', () => controller.torneios()),
                  ],
                )),
          ),
        ));
  }
}
