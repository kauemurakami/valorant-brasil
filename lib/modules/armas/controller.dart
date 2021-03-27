import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/arma_model.dart';

class ArmasController extends GetxController with StateMixin<List<Armas>> {
  final repository;
  ArmasController(this.repository);
  @override
  void onInit() {
    this.repository.loadArmas().then((resp) {
      change(resp, status: RxStatus.success());
    }, onError: (err) {
      print(err);
      change(
        null,
        status: RxStatus.error('Erro ao recuperar Agentes'),
      );
      super.onInit();
    });
    super.onInit();
  }
}
