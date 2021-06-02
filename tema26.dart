import 'dart:io'

void main(){
  var local ='';
  var edad =0;
  switch (local.toUpperCase()) {
    case 'MEGAPLAZA':
      if(edad<18){
        print('Pagará 7 soles');
      }
      else{
        if(edad>=18 && edad<=50){
          print('Pagará 15 soles');
        }
        else{
          if(edad>50){
            print('Pagará 5 soles');
          }
        }
      }
      break;

    case 'MIRAFLORES':
      var msg ='';
      msg = (edad<18 ? "Pagará 10 soles" : (edad>=18 && edad<=50) ? "Pagará 20 soles" : "Pagará 7 soles");
      print(msg);
      break;

    case 'CHORRILLOS':
      var msg ='';
      msg = (edad<18 ? "Pagará 5 soles" : (edad>=18 && edad<=50) ? "Pagará 8 soles" : "Pagará 3 soles");
      print(msg);
      break;
    default:
  }
}
