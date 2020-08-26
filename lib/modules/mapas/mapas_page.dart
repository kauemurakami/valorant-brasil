import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'mapas_controller.dart';

class MapasPage extends GetView<MapasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(child: Text('Mapas'))),
    );
  }
}
