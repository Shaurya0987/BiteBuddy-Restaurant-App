import 'package:flutter/material.dart';

class MenuAndReservationcontainer extends StatelessWidget {
  const MenuAndReservationcontainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ImageWithDescription(
          image: Image.asset(
            "assets/images/logo.jpg",
            fit: BoxFit.cover,          // cover gives perfect rounded edges
          ),
          title: "Full Menu",
          subtitle: "Explore all our dishes",
        ),
        ImageWithDescription(
          image: Image.asset(
            "assets/images/reservation.jpg",
            fit: BoxFit.cover,          // cover gives perfect rounded edges
          ),
          title: "Reservations",
          subtitle: "Book your table now",
        ),
      ],
    );
  }
}

class ImageWithDescription extends StatelessWidget {
  final Image image;
  final String title;
  final String subtitle;

  const ImageWithDescription({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        // ⭐ ROUNDED IMAGE FIX HERE
        ClipRRect(
          borderRadius: BorderRadius.circular(12), // Rounded corners
          child: SizedBox(
            height: 100,
            width: 170,
            child: image,  // Image passed from constructor
          ),
        ),

        const SizedBox(height: 6),

        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: Text(
            subtitle,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ],
    );
  }
}
