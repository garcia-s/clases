String input = '     ExpliCAnDo las caracteristicas de las tortugas    ';
void main(List<String> args) {
  print(createUrlSafeString(input));
}

String createUrlSafeString(String input) {
  return input.trim().replaceAll(' ', '-').toLowerCase();
}
