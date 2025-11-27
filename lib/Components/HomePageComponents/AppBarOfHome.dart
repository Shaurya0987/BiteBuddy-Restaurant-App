import 'package:flutter/material.dart';

AppBar AppBarOfHome() {
    return AppBar(
      leadingWidth: 70, // gives more horizontal space
      leading: Padding(
        padding: const EdgeInsets.only(left: 20), // push it to the right
        child: CircleAvatar(
          backgroundColor: Colors.deepOrange.shade100,
          radius: 10,
          child: Icon(Icons.restaurant, size: 25, color: Colors.deepOrange),
        ),
      ),
      centerTitle: true,
      title: Text("Bite Buddy",style: TextStyle(fontSize: 27),),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Icon(Icons.person_pin_circle_outlined,color: Colors.black,size: 40,),
        )
      ],
    );
  }

