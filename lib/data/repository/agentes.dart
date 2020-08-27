import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:valorant_brasil/data/provider/my_api.dart';

class AgentesRepository {
  final api = ValorantApi(httpClient: http.Client());

  loadAgentes() => api.getAgentes();
}
