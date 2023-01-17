fn main() {

  let booleana: bool = true; 

    // Enteros
    // 1 1 1 1 1 1 1 1 
    //Del 0 al 255
    let entero8: u8 = 255;
  unsafe {
    let mut entero8unsafe: u8 = 256;
    entero8unsafe = entero8unsafe + 50;
    println!("{}", entero8unsafe);
  
  }
  
    //   1 1 1 1 1 1 1 1
    // Del -127 al 127
  let signedEntero8: i8 = -127;

    // Flotante
  let decimal32: f32 = 3.2;

  //Characters;
  let caracter = 'c';


  // Cadena de texto;
  let cadena: &str = "Hello world 日";

  let cadena2 = ['H', 'e', 'l','l','o'];

  println!("{}", cadena);
}