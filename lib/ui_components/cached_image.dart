import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedImage extends StatelessWidget {
  final String url;
  final double? height;
  final double? width;
  final BoxFit? fit;
  const CachedImage(
      {Key? key, required this.url, this.height, this.width, this.fit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      image: CachedNetworkImageProvider(url),
      height: height,
      width: width,
      fit: fit,
      loadingBuilder: (
        BuildContext ctx,
        Widget child,
        ImageChunkEvent? loadingProgress,
      ) {
        if (loadingProgress == null) {
          return child;
        } else {
          return Container(
            height: height,
            width: width,
            color: Colors.transparent,
          );
        }
      },
    );
  }
}
