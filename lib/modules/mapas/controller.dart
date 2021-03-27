import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/mapa_model.dart';

class MapasController extends GetxController with StateMixin<List<Mapas>> {
  final repository;
  MapasController(this.repository);
  @override
  void onInit() {
    this.repository.getMapas().then((resp) {
      change(resp, status: RxStatus.success());
    }, onError: (err) {
      print(err);
      change(
        null,
        status: RxStatus.error('Erro ao recuperar Agentes'),
      );
      super.onInit();
    });
  }
}
