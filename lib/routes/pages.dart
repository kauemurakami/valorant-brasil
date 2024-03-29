import 'package:get/get.dart';
import 'package:valorant_brasil/modules/agente_detail/binding.dart';
import 'package:valorant_brasil/modules/agente_detail/page.dart';
import 'package:valorant_brasil/modules/agentes/binding.dart';
import 'package:valorant_brasil/modules/agentes/page.dart';
import 'package:valorant_brasil/modules/armas/binding.dart';
import 'package:valorant_brasil/modules/armas/page.dart';
import 'package:valorant_brasil/modules/home/binding.dart';
import 'package:valorant_brasil/modules/home/page.dart';
import 'package:valorant_brasil/modules/mapa_detail/binding.dart';
import 'package:valorant_brasil/modules/mapa_detail/page.dart';
import 'package:valorant_brasil/modules/mapas/binding.dart';
import 'package:valorant_brasil/modules/mapas/page.dart';
import 'package:valorant_brasil/modules/publicacao_detail/binding.dart';
import 'package:valorant_brasil/modules/publicacao_detail/page.dart';
import 'package:valorant_brasil/modules/publicacoes/binding.dart';
import 'package:valorant_brasil/modules/publicacoes/page.dart';
import 'package:valorant_brasil/modules/splash/splash.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(name: Routes.HOME, page: () => HomePage(), binding: HomeBinding()),
    GetPage(
        name: Routes.PUBLICACAO_DETAIL,
        page: () => PublicacaoDetailPage(),
        binding: PublicacaoDetailBinding()),
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashPage(),
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
        name: Routes.AGENTE_DETAIL,
        page: () => AgenteDetailPage(),
        binding: AgenteDetailBinding()),
    GetPage(
        name: Routes.MAPA_DETAIL,
        page: () => MapaDetailPage(),
        binding: MapaDetailBinding()),
    GetPage(
        name: Routes.PUBLICACOES,
        page: () => PublicacoesPage(),
        binding: PublicacoesBinding()),
  ];
}
