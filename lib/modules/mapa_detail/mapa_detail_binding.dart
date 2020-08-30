import 'package:get/get.dart';
import 'package:valorant_brasil/modules/mapa_detail/mapa_detail_controller.dart';

class MapaDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MapaDetailController>(() => MapaDetailController());
  }
}
