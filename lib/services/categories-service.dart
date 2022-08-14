import 'package:dio/dio.dart';
import 'package:flutter_application_master/services/api-service.dart';

import '../models/categorie-model.dart';

class CategorieService {
  final service = new ApiService();

  Future<List<CategorieModel>> getCategories() async {
    Response response = await service.getData("/flutter/categories");
    if (response.statusCode == 200) {
      Map data = response.data;
      //print(data);
      List<dynamic> results = data['data'];
      List<CategorieModel> categories = [];
      results.forEach((element) {
        categories.add(CategorieModel.fromMap(element));
      });
     
      return categories;
    } else {
      throw response;
    }
  }
}
