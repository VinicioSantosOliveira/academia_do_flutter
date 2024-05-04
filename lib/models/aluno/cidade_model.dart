class CidadeModel {
  final int id;
  final String nome;

  CidadeModel({
    required this.id,
    required this.nome,
  });

  factory CidadeModel.fromJson(dynamic json) {
    return CidadeModel(
      id: json['id'] ?? 0,
      nome: json['nome'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'nome': nome,
    };
  }
}
