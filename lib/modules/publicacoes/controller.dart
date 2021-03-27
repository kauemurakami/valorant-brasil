import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/publicacoes_model.dart';

class PublicacoesController extends GetxController {
  final _publicacoes = List<Publicacoes>().obs;
  get publicacoes => this._publicacoes.value;
  set publicacoes(value) => this._publicacoes.value = value;

  @override
  void onInit() {
    super.onInit();
  }
}
