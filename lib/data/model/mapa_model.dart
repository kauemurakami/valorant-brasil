// To parse this JSON data, do
//
//     final mapas = mapasFromJson(jsonString);

import 'dart:convert';

List<Mapas> mapasFromJson(String str) =>
    List<Mapas>.from(json.decode(str).map((x) => Mapas.fromJson(x)));

String mapasToJson(List<Mapas> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Mapas {
  Mapas({
    this.nome,
    this.dicas,
    this.descricao,
    this.qtBombs,
    this.vantagem,
    this.melhoresAgentes,
  });

  String nome;
  List<String> dicas;
  String descricao;
  int qtBombs;
  String vantagem;
  List<String> melhoresAgentes;

  factory Mapas.fromJson(Map<String, dynamic> json) => Mapas(
        nome: json["nome"],
        dicas: List<String>.from(json["dicas"].map((x) => x)),
        descricao: json["descricao"],
        qtBombs: json["qt_bombs"],
        vantagem: json["vantagem"],
        melhoresAgentes:
            List<String>.from(json["melhores_agentes"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "nome": nome,
        "dicas": List<dynamic>.from(dicas.map((x) => x)),
        "descricao": descricao,
        "qt_bombs": qtBombs,
        "vantagem": vantagem,
        "melhores_agentes": List<dynamic>.from(melhoresAgentes.map((x) => x)),
      };
}
