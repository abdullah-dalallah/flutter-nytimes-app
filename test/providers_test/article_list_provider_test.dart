import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:ny_times/models/article.dart';
import 'package:flutter/widgets.dart';
import 'package:ny_times/screens/article_detail.dart';
import 'package:ny_times/screens/ny_times_most_popular_articles_home_screen.dart';
import 'package:ny_times/widgets/ny_articles_list_item.dart';
import 'package:provider/provider.dart';
import 'package:ny_times/main.dart';
import 'package:flutter/material.dart';
void main() {


    List<Article> articles = <Article>[Article(
          uri: "nyt://article/e2dee711-7e0f-5ae2-8a3a-669c8a017e07",
          url: "https://www.nytimes.com/2023/04/27/sports/football/nfl-draft-picks-first-round-results.html",
          id: 100000008875890,
          assetId: 100000008875890,
          source: "New York Times",
          publishedDate: DateTime.now(),
          updated: DateTime.now(),
          section: "Sports",
         subsection: "N.F.L.",
         nytdsection: "sports",
          adxKeywords: "Football;Draft and Recruitment (Sports);Trades (Sports);National Football League;Arizona Cardinals;Buffalo Bills;Carolina Panthers;Chicago Bears;Cleveland Browns;Denver Broncos;Detroit Lions;Green Bay Packers;Houston Texans;Jacksonville Jaguars;Kansas City Chiefs;Los Angeles Rams;Miami Dolphins;New England Patriots;New Orleans Saints;New York Giants;New York Jets;Philadelphia Eagles;Pittsburgh Steelers;San Francisco 49ers;Seattle Seahawks",
          column: null,
          byline: "By The New York Times",
          type: "Article",
          title: "N.F.L. Draft Picks 2023: All the Results From the First Round",
         articlesListAbstract: "The Carolina Panthers selected Bryce Young, the Alabama quarterback, at No. 1 overall. Other teams shook up the top 10 with trades. Here’s a full list of the results from the first round on Thursday.",
          desFacet: [
            "Football",
            "Draft and Recruitment (Sports)",
            "Trades (Sports)"
          ],
          orgFacet: [
            "National Football League",
            "Arizona Cardinals",
            "Buffalo Bills",
            "Carolina Panthers",
            "Chicago Bears",
            "Cleveland Browns",
            "Denver Broncos",
            "Detroit Lions",
            "Green Bay Packers",
            "Houston Texans",
            "Jacksonville Jaguars",
            "Kansas City Chiefs",
            "Los Angeles Rams",
            "Miami Dolphins",
            "New England Patriots",
            "New Orleans Saints",
            "New York Giants",
            "New York Jets",
            "Philadelphia Eagles",
            "Pittsburgh Steelers",
            "San Francisco 49ers",
            "Seattle Seahawks"
          ],
          perFacet: [],
          geoFacet: [],
          media: <Media>[
            Media(
             caption: "The North Carolina Supreme Court reversed itself on Friday on a key voting rights case after its majority flipped from Democratic to Republican.",
              approvedForSyndication:1,
              copyright: "Sean Rayford/Getty Images",
              subtype: "photo",
              type: "image",
              mediaMetadata: <MediaMetadatum>[
                MediaMetadatum(
                  format: "Standard Thumbnail",
                  url: "https://static01.nyt.com/images/2023/04/28/multimedia/28nat-carolina-map-kwhv/28nat-carolina-map-kwhv-thumbStandard.jpg",
                  height: 75,
                  width: 75
                )
              ]
            ),
          ],
          etaId: 0





        // title: 'title',
        // articlesListAbstract: 'abstract',
        // id:  123,
        // url:  'url',
        // media:  <Media>[Media(caption: 'caption',mediaMetadata:  <MediaMetadatum>[MediaMetadatum(url: 'url',format:  'format')])]

    )];
  StreamController<List<Article>> _controller ;

  // setUp(() {
  //   articles = <Article>[
  //     Article(title: 'title', articlesListAbstract: 'abstract', id:  123,url:  'url', publishedDate:  DateTime.now(),media:  <Media>[
  //       Media(caption: 'caption',mediaMetadata:  <MediaMetadatum>[MediaMetadatum(url: 'url',format:  'format')])
  //     ])
  //   ];
  // });

  group('[articles model]', () {
    test('[model] check individual values', () {
      expect(articles.length, 1);
      expect(articles[0].title, "N.F.L. Draft Picks 2023: All the Results From the First Round");
      expect(articles[0].articlesListAbstract, "The Carolina Panthers selected Bryce Young, the Alabama quarterback, at No. 1 overall. Other teams shook up the top 10 with trades. Here’s a full list of the results from the first round on Thursday.");
      expect(articles[0].id, 100000008875890);
    });
    testWidgets('[widget] check fetching articles Detail', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MaterialApp(home:ArticleDetail(articles[0])));


    });
    testWidgets('[widget] check fetching articles list item', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MaterialApp(home:NyArticlesListItem(article: articles[0])));


    });

  });



}