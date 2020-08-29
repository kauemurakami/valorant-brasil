import 'package:valorant_brasil/data/provider/my_api.dart';
import 'package:http/http.dart' as http;

class MapasRepository {
  final api = ValorantApi(httpClient: http.Client());

  getMapas() => api.getMapas();
}
