import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ny_times/widgets/ny_appbar.dart';

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
     return Scaffold(
        appBar: NyAppBar(context).createBaseAppbar(widget.title),
        body: Column(
          children: [
            Expanded(child: NyArticlesList(),),
          ],
        ),
     );
  }
}