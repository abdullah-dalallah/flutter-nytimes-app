import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ny_times/widgets/ny_appbar.dart';

import '../widgets/ny_articles_list.dart';

class NyTimesMostPopularHomeScreen extends StatefulWidget{
  final String title;
  const NyTimesMostPopularHomeScreen({required this.title,super.key});

  @override
  State<NyTimesMostPopularHomeScreen> createState() => _NyTimesMostPopularHomeScreenState();
}

class _NyTimesMostPopularHomeScreenState extends State<NyTimesMostPopularHomeScreen> {
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