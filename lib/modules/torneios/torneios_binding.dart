import 'package:get/get.dart';
import 'package:valorant_brasil/modules/torneios/torneios_controller.dart';

class TorneiosBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TorneiosController>(() => TorneiosController());
  }
}
