import 'package:bitebuddy/ReservationPageComponents/CalendarWidget.dart';
import 'package:bitebuddy/ReservationPageComponents/NumberOfGuests.dart';
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
          onPressed: () {
            Navigator.pop(context);
          },
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
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Number of Guests", style: TextStyle(fontSize: 19)),
              SizedBox(height: 10),
              Container(
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: NumberOfGuestsWidget(),
                ),
              ),
              SizedBox(height: 5),
              Text(
                "For parties of 8 or more,please call us directly",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w200,
                ),
              ),
              SizedBox(height: 15),
              Text("Select a Date", style: TextStyle(fontSize: 19)),
              SizedBox(height: 10),
              CalendarContainer(),
              SizedBox(height: 15),
              Text("Choose a Time", style: TextStyle(fontSize: 21)),
              SizedBox(height: 10),
              ScrollViewOfTime(),
              SizedBox(height: 20),
              Text(
                "Special Requests(Optional)",
                style: TextStyle(fontSize: 19),
              ),
              SizedBox(height: 20),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
                  hintText:
                      "e.g. dietary restrictions, high chair, birthday celebration",
                  hintStyle: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 14,
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 12,
                  ),
                  filled: true,
                  fillColor: Colors.white,

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.grey.shade300,
                      width: 1,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(
                      color: Colors.deepOrange,
                      width: 1.5,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(8)
                    )
                  ),
                  onPressed: (){},
                  child: Text("Confirm Reservation",style: TextStyle(
                    fontSize: 19,
                    color: Colors.white
                  ),)
                  ),
              ),
              SizedBox(height: 10,)
            ],
          ),
        ),
      ),
    );
  }

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
      padding: const EdgeInsets.all(4.0),
      child: SizedBox(
        width: 100,
        height: 40,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: isSelected ? Colors.blue : Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            ),
          ),
          onPressed: onTap,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
