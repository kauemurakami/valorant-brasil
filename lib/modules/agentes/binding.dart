import 'package:get/get.dart';
import 'package:valorant_brasil/data/provider/my_api.dart';
import 'package:valorant_brasil/modules/agentes/controller.dart';

class AgentesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgentesController>(() => AgentesController(ValorantApi()));
  }
}
