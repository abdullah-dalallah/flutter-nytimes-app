import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ny_times/providers/articlelistprovider.dart';
import 'package:ny_times/widgets/ny_appbar.dart';
import 'package:provider/provider.dart';

import '../widgets/ny_articles_list.dart';

class NyTimesMostPopularArticlesHomeScreen extends StatefulWidget{
  final String title;
  const NyTimesMostPopularArticlesHomeScreen({required this.title,super.key});

  @override
  State<NyTimesMostPopularArticlesHomeScreen> createState() => _NyTimesMostPopularArticlesHomeScreenState();
}

class _NyTimesMostPopularArticlesHomeScreenState extends State<NyTimesMostPopularArticlesHomeScreen> {


  @override
  Widget build(BuildContext context) {
     return
       Consumer<ArticleListProvider>(
           builder: (context, articleListProvider, child){
             return Scaffold(
               appBar: NyAppBar(context).createBaseAppbar(widget.title),
               body: Center(
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     if(articleListProvider.mostPopularList.status!=null)
                      Expanded(child: NyArticlesList(articles: articleListProvider.mostPopularList.articles,),)
                     else
                       const CircularProgressIndicator(
                                  color: Colors.greenAccent,
                                  semanticsLabel: 'Circular progress indicator',
                             ),
                   ],
                 ),
               ),
             );
           });


  }


  @override
  void initState() {
    super.initState();
    Provider.of<ArticleListProvider>(context, listen: false).getArticleListRes(7);
  }
}