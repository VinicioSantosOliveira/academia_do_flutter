class CursoModel {
  final int id;
  final String nome;
  final bool isAluno;

  CursoModel({
    required this.id,
    required this.nome,
    required this.isAluno,
  });

  factory CursoModel.fromJson(dynamic json) {
    return CursoModel(
      id: json['id'],
      nome: json['nome'],
      isAluno: json['isAluno'],
    );
  }

  Map<String, dynamic> toJson() {
    return <String,dynamic> {
      'id': id,
      'nome': nome,
      'isAluno': isAluno,
    };
  }
}
