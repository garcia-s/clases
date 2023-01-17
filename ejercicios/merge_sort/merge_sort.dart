class MergeSorter {
  static List<int> mergeSort(List<int> list) {
    //guardar el length para no llamar varias veces

    var length = list.length;

    // almacenamos entonces la mitad de la lista;
    int mid = length ~/ 2;

    if (length == 1) return list;
    var left = mergeSort(list.sublist(0, mid));
    var right = mergeSort(list.sublist(mid));
    return _merge(left, right);
  }

  static List<int> _merge(List<int> left, List<int> right) {
    int i = 0;
    int j = 0;
    List<int> arr = [];

    while (i < left.length && j < right.length) {
      if (left[i] <= right[j]) {
        arr.add(left[i]);
        i++;
      } else {
        arr.add(right[j]);
        j++;
      }
    }

    while (i < left.length) {
      arr.add(left[i]);
      i++;
    }

    while (j < right.length) {
      arr.add(right[j]);
      j++;
    }
    return arr;
  }
}
