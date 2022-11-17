String cadena = "Hola";
Perro goodboy = Perro(goodBoy: true);
Map<String, dynamic> perro = {"goodboy": true, "numeroDePatas": 4};

void main(List<String> args) {
  print(perro['goodboy']);
  print(goodboy.goodBoy);
}

abstract class Animal {
  final int numeroDePatas;
  final bool pelo;
  final bool plumas;
  final int ojos;

  Animal(
      {required this.numeroDePatas,
      required this.pelo,
      required this.plumas,
      required this.ojos});

  respirar() {
    print("respirando");
  }
}

class Perro extends Animal {
  final bool goodBoy;
  Perro({required this.goodBoy})
      : super(numeroDePatas: 4, pelo: true, plumas: false, ojos: 2);

  ladrar() {
    print("Guau");
  }
}

class Widget {}
