import 'package:get/get.dart';
import 'package:valorant_brasil/modules/publicacoes/controller.dart';

class PublicacoesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PublicacoesController>(() => PublicacoesController());
  }
}
