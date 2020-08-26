import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valorant_brasil/modules/torneios/torneios_controller.dart';

class TorneiosPage extends GetView<TorneiosController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(child: Text('torneios')),
      ),
    );
  }
}
