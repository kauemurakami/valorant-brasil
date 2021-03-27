import 'package:valorant_brasil/data/provider/my_api.dart';

class ArmasRepository {
  final api = ValorantApi();

  loadArmas() => api.getArmas();
}
