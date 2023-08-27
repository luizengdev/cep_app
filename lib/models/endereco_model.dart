import 'dart:convert';

class EnderecoModel {
  final String cep;
  final String logradouro;
  final String complemento;
  final String bairro;
  final String localidade;
  final String uf;

  EnderecoModel(
      {required this.cep,
      required this.logradouro,
      required this.complemento,
      required this.bairro,
      required this.localidade,
      required this.uf});

  // Transforma a classe em um mapa de dados JSON.
  Map<String, dynamic> toMap() {
    return {
      'cep': cep,
      'logradouro': logradouro,
      'complemento': complemento,
      'bairro': bairro,
      'localidade': localidade,
      'uf': uf
    };
  }

  // Transforma um mapa de dados JSON em uma classe.
  factory EnderecoModel.fromMap(Map<String, dynamic> map) {
    return EnderecoModel(
      cep: map['cep'],
      logradouro: map['logradouro'],
      complemento: map['complemento'],
      bairro: map['bairro'],
      localidade: map['localidade'],
      uf: map['uf'],
    );
  }

  // Transforma um JSON String em uma classe.
  factory EnderecoModel.fromJson(String json) =>
      EnderecoModel.fromMap(jsonDecode(json));
}
