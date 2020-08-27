// To parse this JSON data, do
//
//     final armas = armasFromJson(jsonString);

import 'dart:convert';

List<Armas> armasFromJson(String str) =>
    List<Armas>.from(json.decode(str).map((x) => Armas.fromJson(x)));

String armasToJson(List<Armas> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Armas {
  Armas({
    this.nome,
    this.penetraoParede,
    this.pente,
    this.preco,
    this.distncia,
    this.dano,
    this.tipo,
    this.bio,
    this.descricao,
  });

  String nome;
  PenetraoParede penetraoParede;
  String pente;
  String preco;
  List<String> distncia;
  List<Dano> dano;
  String tipo;
  String bio;
  String descricao;

  factory Armas.fromJson(Map<String, dynamic> json) => Armas(
        nome: json["nome"],
        penetraoParede: json["penetração_parede"] == null
            ? null
            : penetraoParedeValues.map[json["penetração_parede"]],
        pente: json["pente"] == null ? null : json["pente"],
        preco: json["preco"] == null ? null : json["preco"],
        distncia: json["distância"] == null
            ? null
            : List<String>.from(json["distância"].map((x) => x)),
        dano: json["dano"] == null
            ? null
            : List<Dano>.from(json["dano"].map((x) => Dano.fromJson(x))),
        tipo: json["tipo"],
        bio: json["bio"],
        descricao: json["descricao"],
      );

  Map<String, dynamic> toJson() => {
        "nome": nome,
        "penetração_parede": penetraoParede == null
            ? null
            : penetraoParedeValues.reverse[penetraoParede],
        "pente": pente == null ? null : pente,
        "preco": preco == null ? null : preco,
        "distância": distncia == null
            ? null
            : List<dynamic>.from(distncia.map((x) => x)),
        "dano": dano == null
            ? null
            : List<dynamic>.from(dano.map((x) => x.toJson())),
        "tipo": tipo,
        "bio": bio,
        "descricao": descricao,
      };
}

class Dano {
  Dano({
    this.cabeca,
    this.corpo,
    this.pernas,
  });

  String cabeca;
  String corpo;
  String pernas;

  factory Dano.fromJson(Map<String, dynamic> json) => Dano(
        cabeca: json["cabeca"],
        corpo: json["corpo"],
        pernas: json["pernas"],
      );

  Map<String, dynamic> toJson() => {
        "cabeca": cabeca,
        "corpo": corpo,
        "pernas": pernas,
      };
}

enum PenetraoParede { BAIXA, MEDIA, ALTA }

final penetraoParedeValues = EnumValues({
  "alta": PenetraoParede.ALTA,
  "baixa": PenetraoParede.BAIXA,
  "media": PenetraoParede.MEDIA
});

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
