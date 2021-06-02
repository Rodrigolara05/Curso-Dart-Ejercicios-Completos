import 'dart:html';
import 'dart:io'

class Noticia {
  String tipo;
  int hora;
  String origen;

  Noticia(this.tipo,this.hora,this.origen);
}

String escogerOpcion(){
 var opcion;
 do {
   print('Seleccione una de las opciones');
   print('[A] Ver el listado de noticias');
   print('[B] Añadir un nuevo registro');
   opcion = stdin.readLineSync();
 } while (opcion!='A' && opcion!='B');
 return opcion;
}

void main(){
  List<Noticia> noticias =[];
  while (true) {
    var opcion = escogerOpcion();
    if(opcion=='A'){
      print('NOTICIAS: ');
      for (var i = 0; i < noticias.length; i++) {
        print('Noticia $i:');
        print('Tipo: ${noticias[i].tipo}');
        print('Hora: ${noticias[i].hora.toString()}');
        print('Origen: ${noticias[i].origen}');
        print('');
      }
    }
    else{
      print('Ingrese un Tipo (D: Deportes; A: Actualidad; E: Entretenimiento)');
      var tipo = stdin.readLineSync();

      print('Ingrese una Hora (Entero positivo entre 0 y 23)');
      dynamic hora = stdin.readLineSync();
      hora = num.parse(hora);

      print('Ingrese un Origen (N: Nacional; E: Extranjera)');
      var origen = stdin.readLineSync();
      Noticia noticia = Noticia(tipo,hora,origen);
      noticias.add(noticia);
    }
  }
}
