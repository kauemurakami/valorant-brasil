import 'package:get/get.dart';
import 'package:valorant_brasil/modules/agente_detail/agente_detail_controller.dart';

class AgenteDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AgenteDetailController>(() => AgenteDetailController());
  }
}
