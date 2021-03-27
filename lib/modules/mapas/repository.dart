import 'package:valorant_brasil/data/provider/my_api.dart';

class MapasRepository {
  final ValorantApi api;

  MapasRepository(this.api);

  getMapas() => this.api.getMapas();
}
