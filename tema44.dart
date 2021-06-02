import 'dart:math'

void main(){
var n = 100;
var list =[];
var rn = new Random();

for(var i = 0;i<n;i++){
  list.add(rn.nextInt(10)+1);
}
print(list);

for (var i = 0; i <= 10; i++) {
  var sublista = list.where((n) => n==i).toList();
  var cantidad = sublista.length;
  print('La cantidad de personas que marcaron $i es: $cantidad');
}

}
