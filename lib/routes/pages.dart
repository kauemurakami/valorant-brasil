import 'package:get/get.dart';
import 'package:valorant_brasil/modules/agente_detail/agente_detail_binding.dart';
import 'package:valorant_brasil/modules/agente_detail/agente_detail_page.dart';
import 'package:valorant_brasil/modules/agentes/agentes_binding.dart';
import 'package:valorant_brasil/modules/agentes/agentes_page.dart';
import 'package:valorant_brasil/modules/armas/armas_binding.dart';
import 'package:valorant_brasil/modules/armas/armas_page.dart';
import 'package:valorant_brasil/modules/home/home_page.dart';
import 'package:valorant_brasil/modules/mapas/mapas_binding.dart';
import 'package:valorant_brasil/modules/mapas/mapas_page.dart';
import 'package:valorant_brasil/modules/torneios/torneios_binding.dart';
import 'package:valorant_brasil/modules/torneios/torneios_page.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
        name: Routes.AGENTES,
        page: () => AgentesPage(),
        binding: AgentesBinding()),
    GetPage(
        name: Routes.MAPAS, page: () => MapasPage(), binding: MapasBinding()),
    GetPage(
        name: Routes.ARMAS, page: () => ArmasPage(), binding: ArmasBinding()),
    GetPage(
        name: Routes.TORNEIOS,
        page: () => TorneiosPage(),
        binding: TorneiosBinding()),
    GetPage(
        name: Routes.AGENTE_DETAIL,
        page: () => AgenteDetailPage(),
        binding: AgenteDetailBinding()),

    //  GetPage(
    // name: Routes.MAP_DETAIL,
    // page: () => MapDetailPage(),
    // binding: MapDetailBinding()),
  ];
}
