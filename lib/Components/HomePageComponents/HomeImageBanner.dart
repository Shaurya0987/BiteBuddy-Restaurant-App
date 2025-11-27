import 'package:flutter/material.dart';

class ImageBannerStart extends StatelessWidget {
  const ImageBannerStart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(21),
      child: Container(
        height: 350,
        child: Image.asset(
          "assets/images/Screenshot From 2025-11-25 22-13-50.png",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
