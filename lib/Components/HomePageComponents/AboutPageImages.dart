// ⭐ Fixed ImageAxis widget
import 'package:flutter/material.dart';

class ImageAxis extends StatelessWidget {
  final String imagePath;

  const ImageAxis({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),

      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),

        child: Image.asset(
          imagePath,
          height: 250,
          width: 250,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
