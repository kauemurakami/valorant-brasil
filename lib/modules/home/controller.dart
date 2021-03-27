import 'package:get/get.dart';
import 'package:valorant_brasil/routes/pages.dart';

class HomeController extends GetxController {
  final repository;
  HomeController(this.repository);
  agente() => Get.toNamed(Routes.AGENTES);
  armas() => Get.toNamed(Routes.ARMAS);
  mapas() => Get.toNamed(Routes.MAPAS);
  torneios() => Get.toNamed(Routes.TORNEIOS);
  publicacoes() => Get.toNamed(Routes.PUBLICACOES);
}
