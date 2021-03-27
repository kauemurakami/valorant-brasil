import 'package:get/get.dart';
import 'package:valorant_brasil/data/provider/my_api.dart';
import 'package:valorant_brasil/modules/mapas/controller.dart';
import 'package:valorant_brasil/modules/mapas/repository.dart';

class MapasBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MapasController>(
        () => MapasController(MapasRepository(ValorantApi())));
  }
}
