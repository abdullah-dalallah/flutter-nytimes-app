import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cached_image_with_placeholder.dart';

class NyArticlesListItem extends StatelessWidget{
  const NyArticlesListItem({super.key});

  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(8.0),
     child: ListTile(
       onTap: (){

       },
       title: Padding(
         padding: const EdgeInsets.only( bottom: 8),
         child: Text("Supporters of the Democratic candidate Jon Ossoff after his", overflow: TextOverflow.ellipsis,maxLines: 2,),
       ),
       subtitle: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Text("By DAVID LEONHARDT and STUART A.",overflow: TextOverflow.ellipsis,maxLines: 1,),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             Expanded(flex:1,child: Text("THOMPSON dslkdjflksdjfldkfjslkimledikmslmeik",overflow: TextOverflow.ellipsis,maxLines: 1,)),

               Expanded(
               child: Row(
                 children: [
                   Icon(Icons.date_range, size: 17,),
                    SizedBox(width: 5,),
                   Text("2017-06-23",overflow: TextOverflow.ellipsis,maxLines: 1,),
                 ],
               ),
             ),

           ],)
         ],
       ),
       leading: CachedImageWithPlaceholder("https://images.all-free-download.com/images/graphicwebp/physical_fitness_test_513435.webp", BoxFit.cover),
       trailing: Icon(Icons.keyboard_arrow_right),
     ),
   );
  }

}