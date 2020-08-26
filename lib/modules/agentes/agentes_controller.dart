import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/agentes_model.dart';
import 'package:flutter/services.dart' show rootBundle;

class AgentesController extends GetxController {
  @override
  void onInit() {
    loadAgentes();
    super.onInit();
  }

  loadAgentes() async {
    this.listAgentes.value = agentesFromJson(
        await rootBundle.loadString('assets/infos/agentes.json'));
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
