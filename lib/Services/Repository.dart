import 'dart:convert';

import 'package:http/http.dart'as http;
import 'package:musicplayer_lyrics/Services/constants.dart';




class Repository{


 Future fetchdata()async{
 const uri=Constants.baseUrl + Constants.paramaeter +Constants.apikey;


http.Response response= await http.get(Uri.parse(uri));

if(response.statusCode==200){

final decodeddata=   jsonDecode(response.body);
print(decodeddata);

}


 }















}