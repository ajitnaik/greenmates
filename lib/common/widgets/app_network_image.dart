import 'package:flutter/material.dart';
import 'package:greenmates/common/constants/image_constants.dart';
import 'package:transparent_image/transparent_image.dart';

class AppNetworkImage extends StatelessWidget {
  const AppNetworkImage({super.key, required this.url});

  final String? url;
  @override
  Widget build(BuildContext context) {
    return url != null
        ? FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image: url!,
            imageErrorBuilder: (context, error, stackTrace) {
              return Image.asset(placeholderImageUrl);
            },
          )
        : Image.asset(placeholderImageUrl,);
  }
}
