// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'most_popular_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MostPopularList _$MostPopularListFromJson(Map<String, dynamic> json) =>
    MostPopularList(
      status: json['status'] as String?,
      copyright: json['copyright'] as String?,
      numResults: json['numResults'] as int?,
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MostPopularListToJson(MostPopularList instance) =>
    <String, dynamic>{
      'status': instance.status,
      'copyright': instance.copyright,
      'numResults': instance.numResults,
      'articles': instance.articles,
    };
