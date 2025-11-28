import 'package:flutter/material.dart';

class TotalMoneyWidget extends StatelessWidget {
  const TotalMoneyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Total",style: TextStyle(fontSize: 19),),
          Text("\$37.25",style: TextStyle(fontSize: 19),)
        ],
      ),
    );
  }
}