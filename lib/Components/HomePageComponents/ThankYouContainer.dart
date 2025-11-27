import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ThankYouContainer extends StatelessWidget {
  const ThankYouContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.deepOrange.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          SizedBox(height: 15),
          Icon(
            Icons.waving_hand_rounded,
            color: Colors.deepOrange,
            size: 50,
          ),
          SizedBox(height: 5),
          Text(
            "Thank you for coming!",
            style: TextStyle(fontSize: 23),
          ),
          SizedBox(height: 10),
          Text(
            "We loved you.Let's stay in touch",
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade700,
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 25,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange, // button color
                minimumSize: Size(
                  double.infinity,
                  50,
                ), 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ), 
                ),
              ),
              onPressed: () {},
              child: Text(
                "Leave a Review",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 0,
              horizontal: 25,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Colors.deepOrange.shade200, // button color
                minimumSize: Size(
                  double.infinity,
                  50,
                ), // full width + height 50
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    12,
                  ), // rounded corners
                ),
              ),
              onPressed: () {},
              child: Text(
                "Join our Royalty Program",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.facebookF,
                size: 30,
                color: Colors.grey.shade700,
              ), 
              SizedBox(width: 30),
              FaIcon(
                FontAwesomeIcons.instagram,
                color: Colors.grey.shade700,
                size: 30,
              ),
              SizedBox(width: 30),
              FaIcon(
                FontAwesomeIcons.twitter,
                color: Colors.grey.shade700,
                size: 30,
              ), 
            ],
          ),
        ],
      ),
    );
  }
}
