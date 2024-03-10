import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../constants/image_constants.dart';

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
              return Image.asset(placeholderImage);
            },
          )
        : Image.asset(placeholderImage,);
  }
}
