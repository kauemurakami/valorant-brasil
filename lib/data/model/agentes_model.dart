import 'dart:convert';

List<Agentes> agentesFromJson(String str) =>
    List<Agentes>.from(json.decode(str).map((x) => Agentes.fromJson(x)));

String agentesToJson(List<Agentes> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Agentes {
  Agentes({
    this.nome,
    this.classe,
    this.bio,
    this.habilidades,
  });

  String nome;
  String classe;
  String bio;
  List<Habilidade> habilidades;

  factory Agentes.fromJson(Map<String, dynamic> json) => Agentes(
        nome: json["nome"],
        classe: json["classe"],
        bio: json["bio"],
        habilidades: List<Habilidade>.from(
            json["habilidades"].map((x) => Habilidade.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "nome": nome,
        "classe": classe,
        "bio": bio,
        "habilidades": List<dynamic>.from(habilidades.map((x) => x.toJson())),
      };
}

class Habilidade {
  Habilidade({
    this.nome,
    this.letra,
    this.descricao,
  });

  String nome;
  Letra letra;
  String descricao;

  factory Habilidade.fromJson(Map<String, dynamic> json) => Habilidade(
        nome: json["nome"],
        letra: letraValues.map[json["letra"]],
        descricao: json["descricao"],
      );

  Map<String, dynamic> toJson() => {
        "nome": nome,
        "letra": letraValues.reverse[letra],
        "descricao": descricao,
      };
}

enum Letra { Q, E, C, X }

final letraValues =
    EnumValues({"C": Letra.C, "E": Letra.E, "Q": Letra.Q, "X": Letra.X});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
