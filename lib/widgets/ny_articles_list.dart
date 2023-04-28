import 'package:flutter/cupertino.dart';

import 'ny_articles_list_item.dart';

class NyArticlesList extends StatefulWidget{
  const NyArticlesList({super.key});

  @override
  State<NyArticlesList> createState() => _NyArticlesListState();
}

class _NyArticlesListState extends State<NyArticlesList> {
  @override
  Widget build(BuildContext context) {
  return ListView.builder(
    itemCount: 50,
    physics: const BouncingScrollPhysics(),
    itemBuilder: (context, index) {
      return NyArticlesListItem();
    },
  );
  }
}