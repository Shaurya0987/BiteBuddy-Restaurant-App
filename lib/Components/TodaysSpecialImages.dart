import 'package:flutter/material.dart';

class TodaysSpeacialFoodImages extends StatelessWidget {
  final Image image;
  final String title;
  final String subtitle;
  final String price;
  
  const TodaysSpeacialFoodImages({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8),

          // ⭐ FIXED IMAGE WIDGET (NO UI CHANGE)
          ClipRRect(
            borderRadius: BorderRadius.circular(12),   // rounded corners
            child: SizedBox(
              height: 250,
              width: 300,
              child: image,                           // ← Now works correctly
            ),
          ),

          SizedBox(height: 7),

          Row(
            children: [
              Text(title, style: TextStyle(fontSize: 16)),
              SizedBox(width: 80),
              Text(price, style: TextStyle(fontSize: 18)),
            ],
          ),

          Text(
            subtitle,
            style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
          ),

          SizedBox(height: 30),
        ],
      ),
    );
  }
}
