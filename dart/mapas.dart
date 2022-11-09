// Los mapas son una estructura de datos donde se relaciona un valor especifico a una llave o nombre.
// Los mapas se definen por la palabra Map y dentro de ello el tipo de dato de la llave y el tipo de dato del valor.
// Para definir un mapa se escriben una llave luego dos puntos (:) y luego el valor de la llave
// Cada par de llave y valor es separado por comas;

Map<String, int> tallas = {
  // Mapa donde la llave es tipo String y el valor es tipo Int;
  "pantalon": 33,
  "camisa": 28,
};

// Un mapa puede contener cualquier tipo de valor siempre y cuando se especifique en la declaracion;
class MiTipo {}

Map<String, MiTipo> mimapa = {
  "primervalor": MiTipo(),
  "segundoValor": MiTipo(),
};

void main(List<String> args) {
  // Para acceder a un valor dentro de un mapa se utiliza el valor asignado a esa variable y entre corchetes [] la llave asignada a ese valor;
  print(tallas["pantalon"]); //  imprime 32;
}
