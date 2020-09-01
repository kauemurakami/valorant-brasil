import 'package:get/get.dart';
import 'package:valorant_brasil/modules/torneio_detail/torneio_detail_controller.dart';

class TorneioDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TorneioDetailController>(() => TorneioDetailController());
  }
}
