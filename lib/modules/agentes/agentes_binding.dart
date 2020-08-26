import 'package:get/get.dart';

import 'agentes_controller.dart';

class AgentesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgentesController>(() => AgentesController());
  }
}
