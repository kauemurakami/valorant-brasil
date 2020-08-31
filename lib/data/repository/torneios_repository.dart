import 'package:http/http.dart' as http;
import 'package:valorant_brasil/data/provider/my_api.dart';

class TorneiosRepository {
  final api = ValorantApi(httpClient: http.Client());

  getTorneios() => api.getTorneios();
}
