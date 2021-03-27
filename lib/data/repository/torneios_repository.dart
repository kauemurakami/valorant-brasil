import 'package:valorant_brasil/data/provider/my_api.dart';

class TorneiosRepository {
  final api = ValorantApi();

  getTorneios() => api.getTorneios();
}
