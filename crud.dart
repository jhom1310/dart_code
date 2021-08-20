class Produto {
  Map<String, double> produtos = {
    'suco': 2.99,
    'peixe': 4.59,
    'maça': 7.99,
  };
}

main(List<String> args) {
  Produto p = new Produto();
  //listagem
  print(p.produtos);
  //adição
  p.produtos.addAll({'carne': 3.99});
  print(p.produtos);
  //edição
  p.produtos.update('suco', (value) => 4.99);
  print(p.produtos);
  //remoção
  p.produtos.remove('maça');
  print(p.produtos);
  //ordenação
  //print(p.produtos.values.toList()..sort());
  var mapEntries = p.produtos.entries.toList()
    ..sort((a, b) => a.value.compareTo(b.value));
  p.produtos
    ..clear()
    ..addEntries(mapEntries);
  print(p.produtos);
}
