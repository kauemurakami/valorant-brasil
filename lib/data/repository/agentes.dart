import 'package:valorant_brasil/data/provider/my_api.dart';

class AgentesRepository {
  final api = ValorantApi();

  loadAgentes() => api.getAgentes();
}
