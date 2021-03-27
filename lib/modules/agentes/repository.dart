import 'package:meta/meta.dart';
import 'package:valorant_brasil/data/provider/my_api.dart';

class AgentesRepository {
  final ValorantApi api;

  AgentesRepository({@required this.api}) : assert(api != null);

  getAgentes() => this.api.getAgentes();
}
