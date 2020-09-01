// To parse this JSON data, do
//
//     final publicacoes = publicacoesFromJson(jsonString);

import 'dart:convert';

List<Publicacoes> publicacoesFromJson(String str) => List<Publicacoes>.from(
    json.decode(str).map((x) => Publicacoes.fromJson(x)));

String publicacoesToJson(List<Publicacoes> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Publicacoes {
  Publicacoes({
    this.titulo,
    this.autor,
    this.conteudo,
    this.imagem,
    this.data,
  });

  String titulo;
  String autor;
  String conteudo;
  String imagem;
  String data;

  factory Publicacoes.fromJson(Map<String, dynamic> json) => Publicacoes(
        titulo: json["titulo"],
        autor: json["autor"],
        conteudo: json["conteudo"],
        imagem: json["imagem"],
        data: json["data"],
      );

  Map<String, dynamic> toJson() => {
        "titulo": titulo,
        "autor": autor,
        "conteudo": conteudo,
        "imagem": imagem,
        "data": data,
      };
}
