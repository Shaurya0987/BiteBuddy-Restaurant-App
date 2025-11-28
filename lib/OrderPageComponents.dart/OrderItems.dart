import 'package:flutter/material.dart';

//////////////////////////////////////////////////////////////
///   ⭐ COMBINED WIDGET FOR ITEMS                          ///
//////////////////////////////////////////////////////////////

class OrderItemWidget extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imagePath;
  final String price;
  final int count;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const OrderItemWidget({
    super.key,
    required this.title,
    required this.subtitle,
    required this.imagePath,
    required this.price,
    required this.count,
    required this.onIncrement,
    required this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          // IMAGE
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),

          SizedBox(width: 15),

          // TEXT SECTION
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(subtitle, style: TextStyle(color: Colors.grey.shade600)),
                SizedBox(height: 8),
                Text(
                  price,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
          ),

          // COUNTER
          Row(
            children: [
              _counterButton(Icons.remove, onDecrement),
              SizedBox(width: 10),
              Text(
                "$count",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 10),
              _counterButton(Icons.add, onIncrement),
            ],
          ),
        ],
      ),
    );
  }

  Widget _counterButton(IconData icon, VoidCallback onTap) {
    return CircleAvatar(
      radius: 14,
      backgroundColor: Colors.grey.shade300,
      child: InkWell(
        onTap: onTap,
        child: Icon(icon, size: 18, color: Colors.black),
      ),
    );
  }
}
