import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:valorant_brasil/data/model/agentes_model.dart';

const baseUrl =
    'https://raw.githubusercontent.com/kauemurakami/valorant-api/master';

class ValorantApi {
  final http.Client httpClient;
  ValorantApi({@required this.httpClient});

  getAgentes() async {
    var response = await httpClient.get('$baseUrl/agentes.json');
    print(response.body);
    return agentesFromJson(response.body);
  }
}
