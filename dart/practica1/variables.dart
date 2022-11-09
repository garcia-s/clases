//Enteros: int
//Decimales: double
//Texto: String

//Listas: List
//Mapas

int valor = 3;
String cadena = 'Hola Mundo';
List<String> lista = ["Juan", "Garcia", "Es 26 de octubre"];

Map<String, dynamic> mapa = {
  "nombre": "Juan",
  "apellido": "Garcia",
  "edad": 32,
};

List<Map<String, dynamic>> usuarios = [
  {"username": "juanito", "nombre": "Juan", "citas": []},
  {"username": "wladimir", "nombre": "Wladimir"},
  {"username": "jose", "nombre": "Jose"}
];

String ofuscarTarjetaDecredito(String tarjeta) {
  return "xxxx-xxxx-xxxx-" + tarjeta.substring(tarjeta.length - 4);
}

void funcionImpura() {
  valor = 5;
}

void main() {
  // String numeroTarjeta = "1234-1234-5123-4214";
  // String valorFuncion = ofuscarTarjetaDecredito(numeroTarjeta);

  // print(valorFuncion);
  // print(numeroTarjeta);
  funcionImpura();
  print(valor);
}
