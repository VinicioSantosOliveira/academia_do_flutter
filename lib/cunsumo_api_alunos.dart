import 'package:academia_do_flutter/repositories/aluno_repository.dart';

void main() async {
  final alunoRepository = AlunoRepository();

  final alunos = await alunoRepository.buscarTodos();

  print(alunos);

  final aluno = await alunoRepository.buscarPorId(1);

  print(aluno.nome);
  print(aluno.nomeCursos);
  for (var curso in aluno.cursos) {
    print('${curso.nome}: ${aluno.nome} é aluno: ${curso.isAluno ? 'sim' : 'nao'}');
  }
}
