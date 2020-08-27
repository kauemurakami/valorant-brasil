import 'package:get/get.dart';
import 'package:valorant_brasil/data/provider/my_api.dart';
import 'package:valorant_brasil/routes/pages.dart';
import 'package:http/http.dart' as http;

class HomeController extends GetxController {
  agente() => Get.toNamed(Routes.AGENTES);
  armas() => Get.toNamed(Routes.ARMAS);
  mapas() => Get.toNamed(Routes.MAPAS);
  torneios() => Get.toNamed(Routes.TORNEIOS);
  @override
  void onInit() {
    ValorantApi(httpClient: http.Client()).getAgentes();
    super.onInit();
  }
}
