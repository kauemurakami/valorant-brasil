import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'armas_controller.dart';

class ArmasPage extends GetView<ArmasController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ArmasPage')),
      body: SafeArea(
        child: Container(child: Text('armas')),
      ),
    );
  }
}
