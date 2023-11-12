import 'dart:convert';

import 'package:http/http.dart' as http;
List Hotel =[];
Future getData() async {
  var url = "https://www.hotelsgo.co/test/hotels";
  var response = await http.get(
    Uri.parse(url),
  );

  var body = jsonDecode(response.body);
  Hotel.addAll(body);

  print(body);
}
