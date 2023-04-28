import 'package:flutter/cupertino.dart';
import 'package:ny_times/models/article.dart';

import 'ny_articles_list_item.dart';

class NyArticlesList extends StatefulWidget{
  List<Article>? articles;
   NyArticlesList({this.articles,super.key});

  @override
  State<NyArticlesList> createState() => _NyArticlesListState();
}

class _NyArticlesListState extends State<NyArticlesList> {
  @override
  Widget build(BuildContext context) {
  return ListView.builder(
    itemCount: widget.articles!.length,
    physics: const BouncingScrollPhysics(),
    itemBuilder: (context, index) {
      return NyArticlesListItem(article: widget.articles![index],);
    },
  );
  }
}