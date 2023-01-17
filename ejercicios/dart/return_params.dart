String url = 'https://cualquierpagina.com/usuarios/accedidos/233';
void main(List<String> args) {
  var parametros = getParameters(url);
  print(parametros);
}

List<String> getParameters(String url) {
  List<String> parametros = url.split('/');
  parametros.remove(parametros[0]);
  parametros.remove(parametros[0]);
  parametros.remove(parametros[0]);

  return parametros;
}
