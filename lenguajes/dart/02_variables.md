
## Variables en Dart

En dart las variables se definen iniciando con el tipo de dato que se va a almacenar. Luego se coloca el nombre de la variable y por ultimo se le asigna un valor.

Las variables pueden ser primitivos o tipos creados por el usuario;

```
String nombreVariable = "Valor de la Variable";
```

En dart cada clase es un tipo de dato diferente por lo cual una variable puede ser de un tipo de dato de una clase;
```
class MiTipo {}

MiTipo tipoPersonalizado = MiTipo();
```


Para crear una variable que cuyo valor nunca va a cambiar utilizamos como prefijo la palabra final

```
final double PI = 3.1416;
```

Para acceder al valor de una variable utilizamos su nombre para hacer referencia ese valor

```
  print(PI);
```

Y podemos cambiar el valor de una variable declarada con la siguiente sintaxis

```
  nombreVariable = "Nuevo Valor de variable";
```

[Volver a la leccion anterior](./01_lenguaje.md)  | [Ir a la siguiente leccion](./03_data_types.md) 

[Ir a la pagina principal del lenguaje](./index.md) 
