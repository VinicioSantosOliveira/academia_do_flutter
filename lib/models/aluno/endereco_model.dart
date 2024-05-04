import 'package:academia_do_flutter/models/aluno/cidade_model.dart';
import 'package:academia_do_flutter/models/aluno/telefone_model.dart';

class EnderecoModel {
  final String rua;
  final int numero;
  final String cep;
  final CidadeModel cidade;
  final TelefoneModel telefone;

  EnderecoModel({
    required this.rua,
    required this.numero,
    required this.cep,
    required this.cidade,
    required this.telefone,
  });

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'rua': rua,
      'numero': numero,
      'CEP': cep,
      'cidade': cidade.toJson(),
      'telefone': telefone.toJson(),
    };
  }

  factory EnderecoModel.fromJson(dynamic json) {
    return EnderecoModel(
      rua: json['rua'] ?? '',
      numero: json['numero'] ?? 0,
      cep: json['CEP'] ?? '',
      cidade: CidadeModel.fromJson(json['cidade'] ?? <String, dynamic>{}),
      telefone: TelefoneModel.fromJson(json['telefone'] ?? <String, dynamic>{}),
    );
  }
}
