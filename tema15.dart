import 'dart:io'

void main(){
  var diccionario={
    'software' : 'Un software es un programa informatico desarrollado en cualquier programa',
    'hardware' : 'El hardware son los componentes fisicos de una computadora',
    'dart' : 'Dart es un lenguaje de programación de código abierto, desarrollado por Google para el desarroll ode aplicaciones moviles con el framework Flutter'
  };
  print('Ingrese una palabra a buscar:');
var palabra = stdin.readLineSync();
palabra=palabra.toLowerCase();
var existe = diccionario.containsKey(palabra);

if(existe){
  print(diccionario[palabra]);
}
else{
  print("El valor no existe");
}
}