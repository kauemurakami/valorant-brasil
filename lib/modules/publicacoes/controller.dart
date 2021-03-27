import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/publicacoes_model.dart';
import 'package:valorant_brasil/data/repository/publicacoes_repository.dart';

class PublicacoesController extends GetxController {
  final repository = PublicacoesRepository();

  final _publicacoes = List<Publicacoes>().obs;
  get publicacoes => this._publicacoes.value;
  set publicacoes(value) => this._publicacoes.value = value;

  @override
  void onInit() {
    repository.getPublicacoes().then((data) => this.publicacoes = data);
    super.onInit();
  }
}
