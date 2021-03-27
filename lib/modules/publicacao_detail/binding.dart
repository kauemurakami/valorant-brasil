import 'package:get/get.dart';
import 'package:valorant_brasil/modules/publicacao_detail/controller.dart';

class PublicacaoDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PublicacaoDetailController>(() => PublicacaoDetailController());
  }
}
