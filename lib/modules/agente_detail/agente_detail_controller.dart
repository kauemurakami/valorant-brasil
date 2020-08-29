import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/agentes_model.dart';

class AgenteDetailController extends GetxController {
  Agentes agente = Get.arguments;

  final _index = 0.obs;
  get index => this._index.value;
  set index(value) => this._index.value = value;
}
