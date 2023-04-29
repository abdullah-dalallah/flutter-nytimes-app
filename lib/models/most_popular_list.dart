// To parse this JSON data, do
//
//     final mostPopularList = mostPopularListFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:ny_times/models/article.dart';
part 'most_popular_list.g.dart';


MostPopularList mostPopularListFromJson(String str) => MostPopularList.fromJson(json.decode(str));

String mostPopularListToJson(MostPopularList data) => json.encode(data.toJson());
@JsonSerializable()
class MostPopularList {
  String? status;
  String? copyright;
  int? numResults;
  List<Article>? articles;

  MostPopularList({
    this.status,
    this.copyright,
    this.numResults,
    this.articles
  });

  factory MostPopularList.fromJson(Map<String, dynamic> json) => MostPopularList(
    status: json["status"],
    copyright: json["copyright"],
    numResults: json["num_results"],
    articles: json["results"] == null ? [] : List<Article>.from(json["results"]!.map((x) => Article.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "copyright": copyright,
    "num_results": numResults,
    "results": articles == null ? [] : List<dynamic>.from(articles!.map((x) => x.toJson())),
  };
}
