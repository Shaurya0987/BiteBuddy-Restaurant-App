import 'package:flutter/material.dart';

class OrderhistoryTotal extends StatelessWidget {
  const OrderhistoryTotal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Subtotal",style: TextStyle(color: Colors.grey.shade600,fontSize: 17),),
        Text("\$29.49",style: TextStyle(fontSize: 15),)
      ],
    ),
    SizedBox(height: 5,),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Delivery Fee",style: TextStyle(color: Colors.grey.shade600,fontSize: 17),),
        Text("\$5.00",style: TextStyle(fontSize: 15),)
      ],
    ),
    SizedBox(height: 5,),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Taxes & Fees",style: TextStyle(color: Colors.grey.shade600,fontSize: 17),),
        Text("\$2.76",style: TextStyle(fontSize: 15),)
      ],
    ),
        ],
      ),
    );
  }
}