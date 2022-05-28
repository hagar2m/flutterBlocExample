import 'package:breakingbad_app/data/web_services/WEB_services.dart';
import 'package:dio/dio.dart';

import '../../constants/api_constants.dart';

class CharacterApiServices {
  
  final WebServices _webServices = WebServices();

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response? response = await _webServices.get(ApiConstants.characters);
      
      return response != null ? response.data : [];
    } catch (e) {
      print("error in getAllCharacters: ${e.toString()}");
      return [];
    }
    
  }

  //  Future<List<dynamic>> getCharacterQuotes(String charName) async {
  //   try {
  //     Response response = await dio.get('quote' , queryParameters: {'author' : charName});
  //     print(response.data.toString());
  //     return response.data;
  //   } catch (e) {
  //     print(e.toString());
  //     return [];
  //   }
  }
