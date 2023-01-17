## Tipos de datos en dart

En dart existen algunos tipos de datos nativos del lenguaje, aparte de poder crear otros tipos de datos a traves de las clases.

En dart los tipos de datos nativos son:

- __String__ (Cadena de texto),
- __int__ (entero),
- __double__ (numeros decimales)
- __bool__ (verdadero o falso);
- __List__ (lista o array de valores)
- __Map__ (Una coleccion de datos asociados a una llave)


### Cadenas de texto (String)
En dart las cadenas de texto son una lista de caracteres entre comillas simples o dobles;

```
String cadena = 'Hola soy un string';
```

### Enteros

Los valores enteros se escriben solo con numeros sin ningun caracter adicional

```
var entero = 32;
```

### Valores decimales

Los valores de punto foltante se caracterizan por utilizar un punto (.) para separar los numeros decimales

```
double decimal = 3.1416;
```

### Booleanos (verdadero y falso)
Los valores booleanos (verdadero o falso) se definen con la palabra true (verdadero) o false (falso).

```
bool booleano = true;
```
### Listas 
Las listas son una estructura de datos que se utiliza para agrupar informacion y acceder a ella a traves de su posicion en la lista.

Las listas se crean con el tipo de datos List y luego el tipo de dato que la lista va a contener.

Para inicializar una lista escriben los valores entre corchetes [] separados por comas.
```
List<String> nombres = ["Carlos", "Jose", "Jesus"];
```
Una lista puede contener cualquier tipo de data siempre que se exprese dentro de la declaracion.
```
class MiTipo {}

List<MiTipo> listaDeTipos = [MiTipo(), MiTipo()];
```

Accedemos a un elemento de una lista por su indice (posicion en la lista) el cual empieza por cero.

```
print(nombres[0]); // Carlos
```
Las listas son utiles para organizar informacion homogenea y enumerarla para hacer mas facil su uso.

### Mapas

Los mapas son una estructura de datos donde se relaciona un valor especifico a una llave o nombre. Los mapas se definen por la palabra Map y dentro de ello el tipo de dato de la llave y el tipo de dato del valor. 

Para definir un mapa se escriben una llave luego dos puntos (:) y luego el valor de la llave
 Cada par de llave y valor es separado por comas;
```
Map<String, int> tallas = {
  // Mapa donde la llave es tipo String y el valor es tipo Int;
  "pantalon": 33,
  "camisa": 28,
};
```
Un mapa puede contener cualquier tipo de valor siempre y cuando se especifique en la declaracion.

```
class MiTipo {}

Map<String, MiTipo> mimapa = {
  "primervalor": MiTipo(),
  "segundoValor": MiTipo(),
};
```

Para acceder a un valor dentro de un mapa se utiliza, entre corchetes [], la llave asignada a ese valor

```
tallas["pantalon"]; 
//es igual a 33 en el primer ejemplo de mapas
```

[Volver a la leccion anterior](./02_variables.md)  | [Ir a la siguiente leccion](./conditions.md) 


