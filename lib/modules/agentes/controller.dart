import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/agentes_model.dart';

class AgentesController extends GetxController with StateMixin<List<Agentes>> {
  final repository;
  AgentesController(this.repository);
  @override
  void onInit() {
    repository.getAgentes().then((resp) {
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

  final _agente = Agentes().obs;
  get agente => this._agente.value;
  set agente(value) => this._agente.value = value;

  raze() => '';
  viper() => '';
  brimstone() => '';
  breach() => '';
  phoenix() => '';
  sage() => '';
  sova() => '';
  reyna() => '';
  omen() => '';
  jett() => '';
  killjoy() => '';
  cypher() => '';
}
