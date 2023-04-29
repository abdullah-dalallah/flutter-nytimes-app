import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:ny_times/data/constants.dart';
import 'package:ny_times/models/most_popular_list.dart';


class ArticleListProvider with ChangeNotifier{
   MostPopularList _mostPopularList = MostPopularList() ;


   MostPopularList get mostPopularList => _mostPopularList;

  set mostPopularList(MostPopularList value) {
    _mostPopularList = value;
  }

  Future<Response<dynamic>> getArticleListRes(int day) async {
    final endPoint = '${Constants.baseUrl}/mostpopular/v2/mostviewed/all-sections/${day}.json?api-key=${Constants.authorizationAPIKey}';

    var dio = Dio();
    try {
      var response = await dio.get(endPoint,);
      if(response.statusCode ==200){
        print(response.data.runtimeType);
        var  json = response.data;
        _mostPopularList = MostPopularList.fromJson(json);
        // _mostPopularList = MostPopularList(status: MostPopularList.fromJson(json).status, articles:MostPopularList.fromJson(json).articles, copyright: MostPopularList.fromJson(json).copyright,numResults:MostPopularList.fromJson(json).numResults );


      }

      notifyListeners();
      return response;
    } on DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return e.response!;
    }
  }



}