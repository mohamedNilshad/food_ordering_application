import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CNetworkImageBuilder extends StatelessWidget {
  final double width;
  final double? height;
  final String? imgUrl;
  final String altImgUrl;
  final BoxFit boxFit;
  final bool isCenter;

  const CNetworkImageBuilder({super.key, required this.width, this.height, this.imgUrl, required this.altImgUrl, this.boxFit = BoxFit.cover, this.isCenter = false});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      width: width,
      height: height,
      imageUrl: imgUrl ?? altImgUrl,
      fit: boxFit,
      placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
