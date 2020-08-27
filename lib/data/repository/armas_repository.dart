import 'package:meta/meta.dart';
import 'package:valorant_brasil/data/provider/my_api.dart';
import 'package:http/http.dart' as http;

class ArmasRepository {
  final api = ValorantApi(httpClient: http.Client());

  loadArmas() => api.getArmas();
}
