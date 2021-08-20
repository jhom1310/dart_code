class Matriz {
  // ignore: deprecated_member_use
  List<List<int>> matriz = [];
  void add() {
    for (var i = 0; i < 10; i++) {
      List<int> list = [];
      for (var j = 0; j < 10; j++) {
        list.add(j);
      }
      this.matriz.add(list);
    }
    print(this.matriz);
  }
}

main(List<String> args) {
  Matriz m = new Matriz();
  m.add();
}
