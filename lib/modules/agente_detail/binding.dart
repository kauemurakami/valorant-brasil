import 'package:get/get.dart';
import 'package:valorant_brasil/data/provider/my_api.dart';
import 'package:valorant_brasil/modules/agente_detail/controller.dart';
import './repository.dart';

class AgenteDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgenteDetailController>(
        () => AgenteDetailController(AgentesDetailsRepository(ValorantApi())));
  }
}
