import 'package:flutter/material.dart';

class TimeWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const TimeWidget({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: BoxDecoration(
            color: isSelected ? Colors.deepOrange : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
