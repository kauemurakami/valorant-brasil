import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/mapa_model.dart';
import 'package:valorant_brasil/data/repository/mapas_repository.dart';

class MapasController extends GetxController {
  final mapasRepository = MapasRepository();

  @override
  void onInit() {
    mapasRepository.getMapas().then((data) => this.mapas = data);
    super.onInit();
  }

  final _mapas = List<Mapas>().obs;
  get mapas => this._mapas.value;
  set mapas(value) => this._mapas.value = value;
}
