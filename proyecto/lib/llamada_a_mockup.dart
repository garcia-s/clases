import 'dart:async';

class MockupConexion {
  Future<List<String>> fingirConexionYtraerUsuarios() async {
    var completer = Completer<List<String>>();
    Timer(const Duration(seconds: 2), () {
      completer.complete(
          ["juancarlos", "wladimir", "jose", "francisco", "juanjose"]);
    });
    return completer.future;
  }
}
