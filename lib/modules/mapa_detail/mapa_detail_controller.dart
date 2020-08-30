import 'package:get/get.dart';

class MapaDetailController extends GetxController {
  final _mapa = Get.arguments.obs;
  get mapa => this._mapa.value;
  set mapa(value) => this._mapa.value = value;
}
