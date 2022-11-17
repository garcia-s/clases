import 'dart:io';
import 'package:http/http.dart' as http;

import 'dart:convert';

import 'package:proyecto_dart/animales.dart';

Future<void> main() async {
  //  Convertir una cadena de texto a una Uri de dart
  Uri url = Uri.parse('https://pokeapi.co/api/v2/pokemon?limit=100&offset=0');
  // Envio la solicitud al server y recibo la respuesta y la almaceno en la variable respuesta
  http.Response respuesta = await http.get(url);

  //Reviso si el codigo de estatus de la respuesta es 200
  if (respuesta.statusCode == 200) {
    //Convertir de JSON a algo que pueda usar (Mapa)
    Map<String, dynamic> cuerpo = jsonDecode(respuesta.body);
    //Decirle a Dart que trate cuerpo["results"] como una lista de valores dinamicos.
    List<dynamic> listaResultados = cuerpo["results"] as List<dynamic>;

    //iterar por cada uno de los elementos de la lista
    for (int i = 0; i < listaResultados.length; i++) {
      //Decirle a dart que trate al elemento actual como si fuese un Mapa
      Map<String, dynamic> elementoActual =
          listaResultados[i] as Map<String, dynamic>;

      print("     ${elementoActual['name']}");
      print('------------------------------');
      print("URL: ${elementoActual['url']}");
      print('#################################');
      Animal animal = Perro(goodBoy: true);
    }
  }
}
