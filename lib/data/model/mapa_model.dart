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
    this.qtBombs,
    this.vantagem,
    this.dreamTeam,
  });

  String nome;
  List<String> dicas;
  int qtBombs;
  String vantagem;
  List<DreamTeam> dreamTeam;

  factory Mapas.fromJson(Map<String, dynamic> json) => Mapas(
        nome: json["nome"],
        dicas: List<String>.from(json["dicas"].map((x) => x)),
        qtBombs: json["qt_bombs"],
        vantagem: json["vantagem"],
        dreamTeam: List<DreamTeam>.from(
            json["dream_team"].map((x) => DreamTeam.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "nome": nome,
        "dicas": List<dynamic>.from(dicas.map((x) => x)),
        "qt_bombs": qtBombs,
        "vantagem": vantagem,
        "dream_team": List<dynamic>.from(dreamTeam.map((x) => x.toJson())),
      };
}

class DreamTeam {
  DreamTeam({
    this.ataque,
    this.defesa,
  });

  List<String> ataque;
  List<String> defesa;

  factory DreamTeam.fromJson(Map<String, dynamic> json) => DreamTeam(
        ataque: json["ataque"] == null
            ? null
            : List<String>.from(json["ataque"].map((x) => x)),
        defesa: json["defesa"] == null
            ? null
            : List<String>.from(json["defesa"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "ataque":
            ataque == null ? null : List<dynamic>.from(ataque.map((x) => x)),
        "defesa":
            defesa == null ? null : List<dynamic>.from(defesa.map((x) => x)),
      };
}
