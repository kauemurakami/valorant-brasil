import 'package:flutter/services.dart';
import 'package:valorant_brasil/data/model/agentes_model.dart';

class AgentesRepository {
  loadAgentes() async {
    return agentesFromJson(
        await rootBundle.loadString('assets/infos/agentes.json'));
  }
}
