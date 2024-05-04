import 'package:academia_do_flutter/models/aluno/curso_model.dart';
import 'package:academia_do_flutter/models/aluno/endereco_model.dart';

class AlunoModel {
  final int id;
  final String nome;
  final int? idade;
  final List<String> nomeCursos;
  final List<CursoModel> cursos;
  final EnderecoModel endereco;

  AlunoModel({
    required this.id,
    required this.nome,
    this.idade,
    required this.nomeCursos,
    required this.cursos,
    required this.endereco,
  });

  factory AlunoModel.fromJson(Map<String, dynamic> json) {
    return AlunoModel(
      id: json['id'] ?? 0,
      nome: json['nome'] ?? '',
      idade: json['idade'],
      nomeCursos: List<String>.from(json['nomeCursos']),
      cursos: json['cursos']?.map<CursoModel>((cursosMap) => CursoModel.fromJson(cursosMap)).toList(),
      endereco: EnderecoModel.fromJson(json['endereco'] ?? <String, dynamic>{}),
    );
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{
      'id': id,
      'nome': nome,
      'nomeCursos': nomeCursos,
      'cursos': cursos.map((curso) => curso.toJson()).toList(),
      'endereco': endereco.toJson(),
    };
    if (idade != null) {
      map['idade'] = idade;
    }

    return map;
  }

  @override
  String toString() {
    return 'Aluno: $nome($id)';
  }
}
