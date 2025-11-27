import 'package:flutter/material.dart';

AppBar AppBarOfMenuPage(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back,size: 30,)),
      title: Text("Bite Buddy",style: TextStyle(fontSize: 26),),
      actions: [
        IconButton(
          onPressed: (){},
          icon: Icon(Icons.search,size: 30,)
          )
      ],
    );
  }