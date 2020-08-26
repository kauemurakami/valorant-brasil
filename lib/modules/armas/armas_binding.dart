import 'package:get/get.dart';
import 'package:valorant_brasil/modules/armas/armas_controller.dart';

class ArmasBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ArmasController>(() => ArmasController());
  }
}
