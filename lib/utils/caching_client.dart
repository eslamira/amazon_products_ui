import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CachingClient {
  static Widget image(String image, {BoxFit fit = BoxFit.contain}) {
    return CachedNetworkImage(
      imageUrl: imgHeightAppender(image),
      fit: fit,
      placeholder: (context, url) => CupertinoActivityIndicator(),
    );
  }

  static ImageProvider imageProvider(String image) {
    return CachedNetworkImageProvider(
      imgHeightAppender(image),
    );
  }

  static String imgHeightAppender(String link) =>
      link?.contains("?") ?? true ? "$link&height=250" : "$link?height=250";
}
