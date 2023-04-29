// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Article _$ArticleFromJson(Map<String, dynamic> json) => Article(
      uri: json['uri'] as String?,
      url: json['url'] as String?,
      id: json['id'] as int?,
      assetId: json['assetId'] as int?,
      source: json['source'] as String?,
      publishedDate: json['publishedDate'] == null
          ? null
          : DateTime.parse(json['publishedDate'] as String),
      updated: json['updated'] == null
          ? null
          : DateTime.parse(json['updated'] as String),
      section: json['section'] as String?,
      subsection: json['subsection'] as String?,
      nytdsection: json['nytdsection'] as String?,
      adxKeywords: json['adxKeywords'] as String?,
      column: json['column'],
      byline: json['byline'] as String?,
      type: json['type'] as String?,
      title: json['title'] as String?,
      articlesListAbstract: json['articlesListAbstract'] as String?,
      desFacet: (json['desFacet'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      orgFacet: (json['orgFacet'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      perFacet: (json['perFacet'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      geoFacet: json['geoFacet'] as List<dynamic>?,
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList(),
      etaId: json['etaId'] as int?,
    );

Map<String, dynamic> _$ArticleToJson(Article instance) => <String, dynamic>{
      'uri': instance.uri,
      'url': instance.url,
      'id': instance.id,
      'assetId': instance.assetId,
      'source': instance.source,
      'publishedDate': instance.publishedDate?.toIso8601String(),
      'updated': instance.updated?.toIso8601String(),
      'section': instance.section,
      'subsection': instance.subsection,
      'nytdsection': instance.nytdsection,
      'adxKeywords': instance.adxKeywords,
      'column': instance.column,
      'byline': instance.byline,
      'type': instance.type,
      'title': instance.title,
      'articlesListAbstract': instance.articlesListAbstract,
      'desFacet': instance.desFacet,
      'orgFacet': instance.orgFacet,
      'perFacet': instance.perFacet,
      'geoFacet': instance.geoFacet,
      'media': instance.media,
      'etaId': instance.etaId,
    };
