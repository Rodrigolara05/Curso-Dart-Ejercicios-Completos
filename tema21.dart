import 'dart:io'

void main(){
  print('Ingrese nota 1:');
  var nota1 = stdin.readLineSync();

  print('Ingrese nota 2:');
  var nota2 = stdin.readLineSync();
  
  print('Ingrese nota 3:');
  var nota3 = stdin.readLineSync();

  
  print('Ingrese puntos extra:');
  dynamic puntosExtra = stdin.readLineSync();
  puntosExtra = num.parse(puntosExtra);
  var promedio = 0.3 * num.parse(nota1) + 0.3 * num.parse(nota2) + 0.4 * num.parse(nota3);

  var esCero = puntosExtra == 0;
  if(esCero)
  promedio/=2;
  else{
    var menos_de_diez = puntosExtra<10;
    if(menos_de_diez)
      promedio*=2;
      var entre_diez_veinte =((puntosExtra>=10) && puntosExtra<20);
      if(entre_diez_veinte)
      promedio+=(promedio/2);
  }
  print(promedio);
}
