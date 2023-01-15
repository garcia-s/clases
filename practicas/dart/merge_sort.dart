void main(List<String> args) {
  var list = generateRandomList(100000);
  var nuevaLista = List<int>.from(list);
  var before = DateTime.now();
  var orderedList = MergeSorterPointers.mergeSort(list);
  var after = DateTime.now();
  var ms = after.difference(before).inMilliseconds;
  print("El mergeSort tardó ${ms} ms"); 
// -------------------------------
  // print(nuevaLista);
  var beforeBubble = DateTime.now();
  var orderedListBubble = bubbleSort(nuevaLista);
  var afterBubble = DateTime.now();
  var msBubble = afterBubble.difference(beforeBubble).inMilliseconds;
  print("El BubbleSort tardó ${msBubble} ms"); 
}

List<int> generateRandomList(int length) {
  List<int> list = List.generate(length, (index) => index);
  list.shuffle();
  return list;
}

// 9,3,7,6,5

bubbleSort(List<int> array) {
  int lengthOfArray = array.length;
  for (int i = 0; i < lengthOfArray - 1; i++) {
    for (int j = 0; j < lengthOfArray - i - 1; j++) {
      if (array[j] > array[j + 1]) {
        // Swapping using temporary variable
        int temp = array[j];
        array[j] = array[j + 1];
        array[j + 1] = temp;
      }
    }
  }
  return (array);
}

class MergeSorterPointers {
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
