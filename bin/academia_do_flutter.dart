import 'dart:convert';

void main() {
  final jsonCEP = '''
  [{
    "cep": "01001-000",
    "logradouro": "Praça da Sé",
    "complemento": "lado impar",
    "bairro": "Sé",
    "localidade": "São Paulo",
    "uf": "SP",
    "ibge": "3550308",
    "gia": "1004",
    "ddd": "11",
    "siafi": "7107"
  }]
  ''';

  final jsonData = jsonDecode(jsonCEP);

  print(jsonData[0]['logradouro']);

  final map = [{
    'nome': 'vinicio',
    'idade': 21,
  }];

  print(json.encode(map));
}
