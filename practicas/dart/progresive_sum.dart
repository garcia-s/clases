void main(List<String> args) {
  // print(progresiveSum(400000000000000));
  print(progresiveSumMath(400000000000000));
}

int progresiveSum(int number) {
  var sum = 0;
  for (int i = 1; i <= number; i++) {
    sum = sum + i;
  }
  return sum;
}

int progresiveSumMath(int number) {
  // n(n+1)/2
  return ((number * (number + 1)) ~/ 2);
}
