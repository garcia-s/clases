import 'package:flutter/material.dart';
import 'package:proyecto/llamada_a_mockup.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  //constructor
  Application({super.key});

  //variables

  //metoddo
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: MostrarUsuarios(),
        ),
      ),
    );
  }
}

class MostrarUsuarios extends StatefulWidget {
  MostrarUsuarios({super.key});

  @override
  State<MostrarUsuarios> createState() => _MostrarUsuariosState();
}

class _MostrarUsuariosState extends State<MostrarUsuarios> {
  List<String>? usuarios;

  @override
  Widget build(BuildContext context) {
    // crear instancia de la clase
    MockupConexion conexion = MockupConexion();
    // llamar la conexion
    conexion.fingirConexionYtraerUsuarios()
        // esperar al regreso del futuro
        .then((val) {
      // cambiar usuaros al valor esperado
      setState(() {
        usuarios = val;
      });
      print(usuarios);
    });

    if (usuarios == null) return Text("Cargando");
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: usuarios!.map((e) => Text(e)).toList(),
    );
  }
}
