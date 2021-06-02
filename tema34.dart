import 'Dart:io';

String escogerOpcion(){
  var opcion;
    do {
      print('Seleccione una de las tres opciones:');
      print('[A] Añadir un elemento');
      print('[B] Mostrar lista');
      print('[C] Salir');
      opcion = stdin.readLineSync();
    } while (opcion!='A' && opcion!='B' && opcion!='C');
   return opcion; 
}

List<dynamic> ingresarNuevoElemento(List<dynamic> list){
        print('Ingrese un nuevo elemento:');
        var nuevo_elemento = stdin.readLineSync();
        list.add(nuevo_elemento);
        return list;
}  

void main() {
  var list = [];
  while(true){
    
    var opcion = escogerOpcion();
  
    if(opcion=='C') {break;}

    switch (opcion) {
      case 'A':
        list = ingresarNuevoElemento(list);
        break;
      case 'B':
        print(list);
      break;
    }
  }
  print('Termino el programa');
}

