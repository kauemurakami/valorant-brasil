import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/agentes_model.dart';
import 'package:valorant_brasil/data/repository/agentes.dart';

class AgentesController extends GetxController {
  final repository = AgentesRepository();

  @override
  void onInit() {
    repository.loadAgentes().then((data) => listAgentes.value = data);
    super.onInit();
  }

  final listAgentes = List<Agentes>().obs;

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
