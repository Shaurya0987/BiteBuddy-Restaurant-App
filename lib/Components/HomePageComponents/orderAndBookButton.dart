import 'package:flutter/material.dart';

class OrderandBookWidget extends StatelessWidget {
  const OrderandBookWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.deepOrange, // button color
            foregroundColor: Colors.white, // text & icon color
            padding: EdgeInsets.symmetric(horizontal: 48, vertical: 13),
            side: BorderSide.none,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          onPressed: () {},
          child: Text(
            "Order Now",
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.deepOrange.shade100,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 13),
    
            side: BorderSide.none,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          onPressed: () {},
          child: Text(
            "Book a Table",
            style: TextStyle(color: Colors.black, fontSize: 17),
          ),
        ),
      ],
    );
  }
}
