// To parse this JSON data, do
//
//     final torneios = torneiosFromJson(jsonString);

import 'dart:convert';

List<Torneios> torneiosFromJson(String str) =>
    List<Torneios>.from(json.decode(str).map((x) => Torneios.fromJson(x)));

String torneiosToJson(List<Torneios> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Torneios {
  Torneios({
    this.titulo,
    this.dataInicio,
    this.dataFim,
    this.valorIncricao,
    this.realizador,
    this.quantidadeEquipes,
    this.contatoRealizador,
    this.acompanharEvento,
    this.imagemTorneio,
    this.premiacao,
  });

  String titulo;
  String dataInicio;
  String dataFim;
  String valorIncricao;
  String realizador;
  String quantidadeEquipes;
  String contatoRealizador;
  String acompanharEvento;
  String imagemTorneio;
  String premiacao;

  factory Torneios.fromJson(Map<String, dynamic> json) => Torneios(
        titulo: json["titulo"],
        dataInicio: json["dataInicio"],
        dataFim: json["dataFim"],
        valorIncricao: json["valorIncricao"],
        realizador: json["realizador"],
        quantidadeEquipes: json["quantidadeEquipes"],
        contatoRealizador: json["contatoRealizador"],
        acompanharEvento: json["acompanharEvento"],
        imagemTorneio: json["imagemTorneio"],
        premiacao: json["premiacao"],
      );

  Map<String, dynamic> toJson() => {
        "titulo": titulo,
        "dataInicio": dataInicio,
        "dataFim": dataFim,
        "valorIncricao": valorIncricao,
        "realizador": realizador,
        "quantidadeEquipes": quantidadeEquipes,
        "contatoRealizador": contatoRealizador,
        "acompanharEvento": acompanharEvento,
        "imagemTorneio": imagemTorneio,
        "premiacao": premiacao,
      };
}
