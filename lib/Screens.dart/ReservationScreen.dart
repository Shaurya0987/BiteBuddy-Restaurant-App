import 'package:flutter/material.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({super.key});

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Make a Reservation"),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        } ,icon:Icon(Icons.arrow_back_rounded,size: 30,)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Icon(Icons.hourglass_empty_sharp),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            Text("Number of Guests",style: TextStyle(
              fontSize: 19
            ),)
          ],
        ),
      ),
    );
  }
}