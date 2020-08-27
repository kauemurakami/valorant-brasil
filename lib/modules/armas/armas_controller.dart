import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/arma_model.dart';
import 'package:valorant_brasil/data/repository/armas_repository.dart';

class ArmasController extends GetxController {
  final repository = ArmasRepository();

  @override
  void onInit() {
    this.repository.loadArmas().then((data) => this.armas = data);
    super.onInit();
  }

  final _armas = List<Armas>().obs;
  get armas => this._armas.value;
  set armas(value) => this._armas.value = value;
}
