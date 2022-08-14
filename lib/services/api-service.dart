import 'package:dio/dio.dart';
import 'package:flutter_application_master/services/api.dart';

class ApiService {
 final API api = API();
 final Dio dio = Dio();
Future<Response> getData(String path, {Map<String, dynamic>? params}) async {
   //On construit l'url
   String url = api.baseURL + path;
   final response = await dio.get(url, queryParameters: params);
   if (response.statusCode == 200) {
     return response;
   } else {
     throw response;
   }
 }
}
