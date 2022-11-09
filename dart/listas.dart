//Las listas son una estructura de datos que se utiliza para agrupar informacion
//y acceder a ella a traves de su posicion en la lista

// Las listas se crean con el tipo de datos List y luego el tipo de dato que la lista va a contener
// Para inicializar una lista escriben los valores entre corchetes [] separados por comas.
List<String> nombres = ["Carlos", "Jose", "Jesus"];

// Una lista puede contener cualquier tipo de data siempre que se exprese dentro de la declaracion
class MiTipo {}

List<MiTipo> listaDeTipos = [MiTipo(), MiTipo()];

void main() {
  // Accedemos a un elemento de una lista por su indice (posicion en la lista) el cual empieza por cero

  print(nombres[0]); // Carlos

  // Las listas son utiles para organizar informacion homogenea y enumerarla para hacer mas facil su uso.
}
