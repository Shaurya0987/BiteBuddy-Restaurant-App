import 'package:flutter/material.dart';

class NumberOfGuestsWidget extends StatefulWidget {
  const NumberOfGuestsWidget({super.key});

  @override
  State<NumberOfGuestsWidget> createState() => _NumberOfGuestsWidgetState();
}

class _NumberOfGuestsWidgetState extends State<NumberOfGuestsWidget> {
  int count = 1;   // default value

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.blue.shade100,
            borderRadius: BorderRadius.circular(18),
          ),
          child: const Icon(Icons.group, color: Colors.blue, size: 30),
        ),

        const SizedBox(width: 15),
        const Text("Guests", style: TextStyle(fontSize: 20)),
        const SizedBox(width: 105),

        // ---------------- MINUS BUTTON ----------------
        CircleAvatar(
          radius: 17,
          backgroundColor: Colors.blue.shade100,
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (count > 1) count--;
              });
            },
            child: const Icon(Icons.remove, color: Colors.blue, size: 18),
          ),
        ),

        const SizedBox(width: 15),

        // ---------------- COUNT TEXT ----------------
        Text(
          "$count",
          style: const TextStyle(fontSize: 21),
        ),

        const SizedBox(width: 15),

        // ---------------- PLUS BUTTON ----------------
        CircleAvatar(
          radius: 17,
          backgroundColor: Colors.blue.shade100,
          child: GestureDetector(
            onTap: () {
              setState(() {
                count++;
              });
            },
            child: const Icon(Icons.add, color: Colors.blue, size: 18),
          ),
        ),
      ],
    );
  }
}
