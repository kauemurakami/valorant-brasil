import 'package:get/get.dart';
import 'package:valorant_brasil/modules/mapa_detail/controller.dart';

class MapaDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MapaDetailController>(() => MapaDetailController());
  }
}
