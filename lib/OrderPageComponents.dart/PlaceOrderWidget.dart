import 'package:flutter/material.dart';

class PlaceOrderWidget extends StatelessWidget {
  const PlaceOrderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Center(child: Text("Place Order  .  \$37.25",style: TextStyle(color: Colors.white,fontSize: 18),)),
    );
  }
}