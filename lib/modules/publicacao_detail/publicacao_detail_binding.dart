import 'package:get/get.dart';
import 'package:valorant_brasil/modules/publicacao_detail/publicacao_detail_controller.dart';

class PublicacaoDetailBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PublicacaoDetailController>(() => PublicacaoDetailController());
  }
}
