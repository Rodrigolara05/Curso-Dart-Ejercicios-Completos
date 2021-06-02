import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

void main() async{
  var response = await http.get('https://dat.dev/f/portmanteaux.json');
  if(response.statusCode == 200){
    var jsonResponse = convert.jsonDecode(response.body);
    for (var item in jsonResponse) {
      print(item);
    }
  }
  else{
    print('La url no responde');
  }
}