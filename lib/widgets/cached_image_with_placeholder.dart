import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

class CachedImageWithPlaceholder extends StatelessWidget {
  String imageUrl;
  BoxFit boxFit;
  CachedImageWithPlaceholder(this.imageUrl,this.boxFit, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      ClipRRect(
        borderRadius: BorderRadius.circular(100.0),
      child: CachedNetworkImage(
        height: 50,
        width: 50,

        imageUrl: imageUrl,
        fit: boxFit,
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
    );
  }
}
