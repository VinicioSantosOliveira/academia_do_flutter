class TelefoneModel {
  final int ddd;
  final String telefone;

  TelefoneModel({
    required this.ddd,
    required this.telefone,
  });

  factory TelefoneModel.fromJson(dynamic json) {
    return TelefoneModel(
      ddd: json['ddd'] ?? 0,
      telefone: json['telefone'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'ddd': ddd,
      'telefone': telefone,
    };
  }
}
