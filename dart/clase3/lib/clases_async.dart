import 'dart:async';

Future<int> traerEnteroDespuesDeTresSegundos() async {
  Completer<int> _completer = Completer<int>();
  Timer(Duration(seconds: 3), () {
    _completer.complete(3);
  });
  return _completer.future;
}

Future<int> traerEnteroDespuesDeDosSegundos() async {
  Completer<int> _completer = Completer<int>();
  Timer(Duration(seconds: 2), () {
    _completer.complete(2);
  });
  return _completer.future;
}

void ejecutarCallbackDespuesDeRespuesta(void Function(int) callback) {
  traerEnteroDespuesDeTresSegundos().then(callback);
}
