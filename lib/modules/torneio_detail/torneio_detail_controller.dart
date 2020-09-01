import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/torneio_model.dart';
import 'package:valorant_brasil/modules/torneios/widgets/pagina_evento_web.dart';

class TorneioDetailController extends GetxController {
  Torneios torneio = Get.arguments;

  openPaginaEvento() {
    Get.to(PaginaEventoWebView(this.torneio.acompanharEvento));
  }
}
