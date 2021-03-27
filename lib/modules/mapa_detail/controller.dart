import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/mapa_model.dart';

class MapaDetailController extends GetxController {
  Mapas _mapa = Get.arguments;
  get mapa => this._mapa;
  set mapa(value) => this._mapa = value;
}
