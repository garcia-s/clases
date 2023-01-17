
## Hello World en Rust

En rust como en muchos otros lenguajes, el punto de entrada es la funcion main dentro del archivo a ejecutar. 

La funcion para imprimir en pantalla en Rust es __println!__.


```
fn main() {
    println!("Hello World");
}
```

Para ejecutar la aplicacion en rust a diferencia de lenguajes como javascript, dart y python, primero debe compilar el codigo. Para compilar rust debera ejecutar el compilador en la linea de comandos seguido de la ruta al archivo que va a compilar.


```
> rustc .hello_world.rs
```

Y luego ejecutar el nuevo archivo generado por el compilador.

```
> ./hello_world
```
