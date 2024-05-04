import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:academia_do_flutter/models/aluno/aluno_model.dart';

class AlunoRepository {
  Future<List<AlunoModel>> buscarTodos() async {
    final alunosResponse = await http.get(Uri.parse('http://localhost:8080/alunos'));

    final alunosList = jsonDecode(alunosResponse.body);

    final todosAlunos = alunosList.map<AlunoModel>((alunoMap) {
      return AlunoModel.fromJson(alunoMap);
    }).toList();

    return todosAlunos;
  }

  Future<AlunoModel> buscarPorId(int id) async {
    final alunoResponse = await http.get(Uri.parse('http://localhost:8080/alunos/$id'));

    final aluno = jsonDecode(alunoResponse.body);

    return AlunoModel.fromJson(aluno);
  }
}
