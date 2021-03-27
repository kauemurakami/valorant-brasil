import 'package:valorant_brasil/data/provider/my_api.dart';

class ArmasRepository {
  final ValorantApi api;
  ArmasRepository(this.api);
  loadArmas() => api.getArmas();
}
