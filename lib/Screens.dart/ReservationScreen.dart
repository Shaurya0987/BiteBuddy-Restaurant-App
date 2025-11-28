import 'package:bitebuddy/ReservationPageComponents/CalendarWidget.dart';
import 'package:bitebuddy/ReservationPageComponents/NumberOfGuests.dart';
import 'package:bitebuddy/ReservationPageComponents/SizedBoxWidget.dart';
import 'package:bitebuddy/ReservationPageComponents/TImeWidget.dart';
import 'package:bitebuddy/ReservationPageComponents/TextFeildWidget.dart';
import 'package:flutter/material.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({super.key});

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  int selectedIndex = 0;

  List<String> time = [
    "6:00PM",
    "6:30PM",
    "7:00PM",
    "7:30PM",
    "8:00PM",
    "8:30PM",
    "9:00PM",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Make a Reservation"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_rounded, size: 30),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Icon(Icons.hourglass_empty_sharp),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(18.0),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // ---------------- GUESTS ----------------
              Text("Number of Guests", style: TextStyle(fontSize: 19)),
              SizedBox(height: 10),

              Container(
                height: 90,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: NumberOfGuestsWidget(),
              ),

              SizedBox(height: 5),

              Text(
                "For parties of 8 or more, please call us directly",
                style: TextStyle(color: Colors.grey.shade600, fontSize: 13),
              ),

              SizedBox(height: 15),

              // ---------------- CALENDAR ----------------
              Text("Select a Date", style: TextStyle(fontSize: 19)),
              SizedBox(height: 10),
              CalendarContainer(),

              SizedBox(height: 20),

              // ---------------- TIME ----------------
              Text("Choose a Time", style: TextStyle(fontSize: 21)),
              SizedBox(height: 10),

              ScrollViewOfTime(),     // ⭐ ADDED BACK HERE

              SizedBox(height: 20),

              // ---------------- SPECIAL REQUESTS ----------------
              Text(
                "Special Requests(Optional)",
                style: TextStyle(fontSize: 19),
              ),
              SizedBox(height: 15),

              TextFeildWidget(),

              SizedBox(height: 30),

              // ---------------- CONFIRM BUTTON ----------------
              SizedBoxWidget(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  // ⭐⭐ SCROLL VIEW OF TIME (YOU MISSED THIS)
  SingleChildScrollView ScrollViewOfTime() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(time.length, (index) {
          return TimeWidget(
            title: time[index],
            isSelected: selectedIndex == index,
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
          );
        }),
      ),
    );
  }
}
