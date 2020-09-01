import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';
import 'package:valorant_brasil/data/model/agentes_model.dart';
import 'package:valorant_brasil/data/model/arma_model.dart';
import 'package:valorant_brasil/data/model/mapa_model.dart';
import 'package:valorant_brasil/data/model/publicacoes_model.dart';
import 'package:valorant_brasil/data/model/torneio_model.dart';

const baseUrl =
    'https://raw.githubusercontent.com/kauemurakami/valorant-api/master';

class ValorantApi {
  final http.Client httpClient;
  ValorantApi({@required this.httpClient});

  getPublicacoes() async {
    var response = await httpClient.get('$baseUrl/publicacoes.json');
    //print(response.body);
    return publicacoesFromJson(response.body);
  }

  getTorneios() async {
    var response = await httpClient.get('$baseUrl/torneios.json');
    //print(response.body);
    return torneiosFromJson(response.body);
  }

  getMapas() async {
    var response = await httpClient.get('$baseUrl/mapas.json');
    //print(response.body);
    return mapasFromJson(response.body);
  }

  getArmas() async {
    var response = await httpClient.get('$baseUrl/armas.json');
    //print(response.body);
    return armasFromJson(response.body);
  }

  getAgentes() async {
    var response = await httpClient.get('$baseUrl/agentes.json');
    //print(response.body);
    return agentesFromJson(response.body);
  }
}
