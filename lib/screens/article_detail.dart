import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ny_times/data/constants.dart';
import 'package:ny_times/models/article.dart';
import 'package:ny_times/widgets/article_appbar.dart';
import 'package:shimmer/shimmer.dart';


class ArticleDetail extends StatefulWidget{
  const ArticleDetail(this._article, {Key? key}) : super(key: key);
  final Article _article;
  static const String routeKey = '/ArticleDetail';

  @override
  State<ArticleDetail> createState() => _ArticleDetailState();
}

class _ArticleDetailState extends State<ArticleDetail> {
  @override
  Widget build(BuildContext context) {
    String? imageUrl = Constants.defaultImage;
    if (widget._article.media!.isNotEmpty &&
        widget._article.media!.first.mediaMetadata!.isNotEmpty &&
        widget._article.media!.first.mediaMetadata!.length > 2) {
      imageUrl = widget._article.media!.first.mediaMetadata![2].url;
    }

   return Scaffold(
     appBar: ArticleAppbar(context).createBaseAppbar("${widget._article!.title}"),
     body: Column(
       children: [
         CachedNetworkImage(
           imageUrl: imageUrl!,
           fit: BoxFit.contain,
           placeholder: (context, url) => Shimmer.fromColors(
             baseColor: Colors.grey[400]!,
             highlightColor: Colors.grey[100]!,
             child: Container(
               decoration: const BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.only(
                   bottomRight: Radius.circular(50.0),
                   bottomLeft: Radius.circular(50.0),
                   topLeft: Radius.circular(50.0),
                   topRight: Radius.circular(50.0),
                 ),
               ),

             ),
           ),
           errorWidget: (context, url, error) => Icon(Icons.error,),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Text("${widget._article.articlesListAbstract}",
             style: Theme.of(context).textTheme.headline5,
           ),
         ),




       ],
     ),
   );
  }
}