import 'package:get/get.dart';
import 'package:valorant_brasil/modules/mapas/mapas_controller.dart';

class MapasBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MapasController>(() => MapasController());
  }
}
