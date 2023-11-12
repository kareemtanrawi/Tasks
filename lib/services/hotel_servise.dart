// import '../model/hote_model.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// class HotelApi{
//   Future <List<HotelModel>> fetchHotel() async{
//    try{
//      http.Response response =await http.get(Uri.parse('https://www.hotelsgo.co/test/hotels') );
//      if(response.statusCode == 200){
//        String data = response.body;
//        var jsonData = jsonDecode(data);
//        HotelModel hotelModel = HotelModel.fromJson(jsonData);
//
//
//      }else{
//        print('status code = ${response.statusCode}');
//      }
//    }catch(ex){
//      print(ex);
//    }
//   }
// }