// To parse this JSON data, do
//
//     final articlesList = articlesListFromJson(jsonString);

import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';

part 'article.g.dart';


Article articlesListFromJson(String str) => Article.fromJson(json.decode(str));

String articlesListToJson(Article data) => json.encode(data.toJson());
@JsonSerializable()
class Article {
  String? uri;
  String? url;
  int? id;
  int? assetId;
  String? source;
  DateTime? publishedDate;
  DateTime? updated;
  String? section;
  String? subsection;
  String? nytdsection;
  String? adxKeywords;
  dynamic column;
  String? byline;
  String? type;
  String? title;
  String? articlesListAbstract;
  List<String>? desFacet;
  List<String>? orgFacet;
  List<String>? perFacet;
  List<dynamic>? geoFacet;
  List<Media>? media;
  int? etaId;

  Article({
    this.uri,
    this.url,
    this.id,
    this.assetId,
    this.source,
    this.publishedDate,
    this.updated,
    this.section,
    this.subsection,
    this.nytdsection,
    this.adxKeywords,
    this.column,
    this.byline,
    this.type,
    this.title,
    this.articlesListAbstract,
    this.desFacet,
    this.orgFacet,
    this.perFacet,
    this.geoFacet,
    this.media,
    this.etaId,
  });

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    uri: json["uri"],
    url: json["url"],
    id: json["id"],
    assetId: json["asset_id"],
    source: json["source"],
    publishedDate: json["published_date"] == null ? null : DateTime.parse(json["published_date"]),
    updated: json["updated"] == null ? null : DateTime.parse(json["updated"]),
    section: json["section"],
    subsection: json["subsection"],
    nytdsection: json["nytdsection"],
    adxKeywords: json["adx_keywords"],
    column: json["column"],
    byline: json["byline"],
    type: json["type"],
    title: json["title"],
    articlesListAbstract: json["abstract"],
    desFacet: json["des_facet"] == null ? [] : List<String>.from(json["des_facet"]!.map((x) => x)),
    orgFacet: json["org_facet"] == null ? [] : List<String>.from(json["org_facet"]!.map((x) => x)),
    perFacet: json["per_facet"] == null ? [] : List<String>.from(json["per_facet"]!.map((x) => x)),
    geoFacet: json["geo_facet"] == null ? [] : List<dynamic>.from(json["geo_facet"]!.map((x) => x)),
    media: json["media"] == null ? [] : List<Media>.from(json["media"]!.map((x) => Media.fromJson(x))),
    etaId: json["eta_id"],
  );

  Map<String, dynamic> toJson() => {
    "uri": uri,
    "url": url,
    "id": id,
    "asset_id": assetId,
    "source": source,
    "published_date": "${publishedDate!.year.toString().padLeft(4, '0')}-${publishedDate!.month.toString().padLeft(2, '0')}-${publishedDate!.day.toString().padLeft(2, '0')}",
    "updated": updated?.toIso8601String(),
    "section": section,
    "subsection": subsection,
    "nytdsection": nytdsection,
    "adx_keywords": adxKeywords,
    "column": column,
    "byline": byline,
    "type": type,
    "title": title,
    "abstract": articlesListAbstract,
    "des_facet": desFacet == null ? [] : List<dynamic>.from(desFacet!.map((x) => x)),
    "org_facet": orgFacet == null ? [] : List<dynamic>.from(orgFacet!.map((x) => x)),
    "per_facet": perFacet == null ? [] : List<dynamic>.from(perFacet!.map((x) => x)),
    "geo_facet": geoFacet == null ? [] : List<dynamic>.from(geoFacet!.map((x) => x)),
    "media": media == null ? [] : List<dynamic>.from(media!.map((x) => x.toJson())),
    "eta_id": etaId,
  };
}

class Media {
  String? type;
  String? subtype;
  String? caption;
  String? copyright;
  int? approvedForSyndication;
  List<MediaMetadatum>? mediaMetadata;

  Media({
    this.type,
    this.subtype,
    this.caption,
    this.copyright,
    this.approvedForSyndication,
    this.mediaMetadata,
  });

  factory Media.fromJson(Map<String, dynamic> json) => Media(
    type: json["type"],
    subtype: json["subtype"],
    caption: json["caption"],
    copyright: json["copyright"],
    approvedForSyndication: json["approved_for_syndication"],
    mediaMetadata: json["media-metadata"] == null ? [] : List<MediaMetadatum>.from(json["media-metadata"]!.map((x) => MediaMetadatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "subtype": subtype,
    "caption": caption,
    "copyright": copyright,
    "approved_for_syndication": approvedForSyndication,
    "media-metadata": mediaMetadata == null ? [] : List<dynamic>.from(mediaMetadata!.map((x) => x.toJson())),
  };
}

class MediaMetadatum {
  String? url;
  String? format;
  int? height;
  int? width;

  MediaMetadatum({
    this.url,
    this.format,
    this.height,
    this.width,
  });

  factory MediaMetadatum.fromJson(Map<String, dynamic> json) => MediaMetadatum(
    url: json["url"],
    format: json["format"],
    height: json["height"],
    width: json["width"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "format": format,
    "height": height,
    "width": width,
  };
}
