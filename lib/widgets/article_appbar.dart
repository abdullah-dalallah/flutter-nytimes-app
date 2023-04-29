import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ny_times/widgets/drawer_icon_button.dart';
import 'package:ny_times/widgets/search_icon_button.dart';

import 'more_options_icon.dart';

class ArticleAppbar {
  final BuildContext context;
  ArticleAppbar(this.context);
  AppBar createBaseAppbar(String title) {
    return AppBar(
      // elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.greenAccent.shade200,
      leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(Icons.arrow_back_ios_sharp),),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.w400),),

    );
  }
}