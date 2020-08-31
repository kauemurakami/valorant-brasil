import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/torneio_model.dart';
import 'package:valorant_brasil/data/repository/torneios_repository.dart';

class TorneiosController extends GetxController {
  final repository = TorneiosRepository();

  final _torneios = List<Torneios>().obs;
  get torneios => this._torneios.value;
  set torneios(value) => this._torneios.value = value;

  @override
  void onInit() {
    this.repository.getTorneios().then((data) => torneios = data);
    super.onInit();
  }

  openWebPage() => '';
}
