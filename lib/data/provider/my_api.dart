import 'dart:convert';

import 'package:get/get.dart';
import 'package:valorant_brasil/data/model/agentes_model.dart';
import 'package:valorant_brasil/data/model/arma_model.dart';
import 'package:valorant_brasil/data/model/mapa_model.dart';
import 'package:valorant_brasil/data/model/publicacoes_model.dart';
import 'package:valorant_brasil/data/model/error_model.dart';
import 'package:valorant_brasil/data/model/torneio_model.dart';

const baseUrl =
    'https://raw.githubusercontent.com/kauemurakami/valorant-api/master';

class ValorantApi extends GetConnect {
  getPublicacoes() async {
    var response = await get('$baseUrl/publicacoes.json');
    //print(response.body);
    return publicacoesFromJson(response.body);
  }

  getTorneios() async {
    var response = await get('$baseUrl/torneios.json');
    //print(response.body);
    return torneiosFromJson(response.body);
  }

  getMapas() async {
    List<Mapas> m = List<Mapas>();
    var response =
        await get<List<Mapas>>('$baseUrl/mapas.json', decoder: (res) {
      m = mapasFromJson(res);
      return m;
    });

    if (response.hasError) {
      throw ErrorModel(
          message: response.statusText, status: response.statusCode);
    }
    return m;
  }

  getArmas() async {
    List<Armas> armas = List<Armas>();
    var response =
        await get<List<Armas>>('$baseUrl/armas.json', decoder: (res) {
      armas = armasFromJson(res);
      return armas;
    });
    if (response.hasError) {
      throw ErrorModel(
          message: response.statusText, status: response.statusCode);
    }
    return armas;
  }

  getAgentes() async {
    List<Agentes> a = List<Agentes>();
    var response =
        await get<List<Agentes>>('$baseUrl/agentes.json', decoder: (res) {
      a = agentesFromJson(res);
      return a;
    });
    if (response.hasError) {
      throw ErrorModel(
          message: response.statusText, status: response.statusCode);
    }
    return a;
  }
}
