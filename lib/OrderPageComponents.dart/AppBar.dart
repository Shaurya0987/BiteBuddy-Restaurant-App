import 'package:flutter/material.dart';

AppBar AppBarOfOrder() {
    return AppBar(
      centerTitle: true,
      leading: Icon(Icons.arrow_back_rounded, size: 30),
      title: Text("Your Order"),
    );
  }