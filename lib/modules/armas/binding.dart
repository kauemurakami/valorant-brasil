import 'package:get/get.dart';
import 'package:valorant_brasil/data/provider/my_api.dart';
import 'package:valorant_brasil/modules/armas/controller.dart';
import 'package:valorant_brasil/modules/armas/repository.dart';

class ArmasBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ArmasController>(
        () => ArmasController(ArmasRepository(ValorantApi())));
  }
}
