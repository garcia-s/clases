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
