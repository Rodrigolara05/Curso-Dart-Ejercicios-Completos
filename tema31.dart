import 'Dart:io';

void main() {
  var list = [];
  while(true){
    var opcion;
    do {
      print('Seleccione una de las tres opciones:');
      print('[A] Añadir un elemento');
      print('[B] Mostrar lista');
      print('[C] Salir');
      opcion = stdin.readLineSync();
    } while (opcion!='A' && opcion!='B' && opcion!='C');
  
    if(opcion=='C') {break;}

    switch (opcion) {
      case 'A':
        print('Ingrese un nuevo elemento:');
        var nuevo_elemento = stdin.readLineSync();
        list.add(nuevo_elemento);
        break;
      case 'B':
        print(list);
      break;
      default:
      break; 
    }
  }
    print('Termino el programa');
}
