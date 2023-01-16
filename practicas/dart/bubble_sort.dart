// O n-1 2
void main() {
  var listToanalyze = createRandomIntegers(20000);
  var before = DateTime.now();
  bubbleSort(listToanalyze);
  var after = DateTime.now();
  print(after.difference(before).inMilliseconds);
  // print(listaExterna);
}

List<int> bubbleSort(List<int> lista) {
  for (int i = 0; i < lista.length - 1; i++) {
    for (int j = 0; j < lista.length - 1; j++) {
      if (lista[j] > lista[j + 1]) {
        int temporal = lista[j];
        lista[j] = lista[j + 1];
        lista[j + 1] = temporal;
      }
    }
  }
  return lista;
}

List<int> createRandomIntegers(int numbers) {
  List<int> list = List.generate(numbers, (i) => i);
  list.shuffle();
  return list;
}

var lista = [
  2, 5,
  // 2,5,7,9
  7, 9,
  //1,2,3,5,6,7,9
  3, 8,
  //1,3,6,8
  1, 6
];
