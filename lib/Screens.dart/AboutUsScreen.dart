import 'package:bitebuddy/Components/AboutPageImages.dart';
import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("About Us"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ⭐ Top About Us Image (fixed)
              ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: Image.asset(
                  "assets/images/outLookRestaurant.jpg",
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),

              const Text("Our Story", style: TextStyle(fontSize: 27)),
              const SizedBox(height: 10),

              Text(
                "Our restaurant began as a small family kitchen where recipes were shared with love and passion. What started as simple home-cooked meals soon grew into a community favorite. Every dish we serve carries a piece of our heritage, blending tradition and creativity to bring warmth, comfort, and unforgettable flavors to every guest.",
                style: TextStyle(color: Colors.grey.shade700),
              ),

              const SizedBox(height: 20),

              const Text("Our Mission", style: TextStyle(fontSize: 27)),
              const SizedBox(height: 10),

              Text(
                "Our mission is to craft delicious, high-quality food that brings people together. We aim to deliver exceptional taste, warm hospitality, and a memorable dining experience every time. Through fresh ingredients, thoughtful preparation, and genuine care, we strive to make every guest feel valued, satisfied, and inspired to return again.",
                style: TextStyle(color: Colors.grey.shade700),
              ),

              const SizedBox(height: 20),

              const Text("A Glimpse Inside", style: TextStyle(fontSize: 27)),
              const SizedBox(height: 10),

              // ⭐ Horizontal gallery (fixed)
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ImageAxis(imagePath: "assets/images/restaurant1.jpg"),
                    ImageAxis(imagePath: "assets/images/restaurant3.jpg"),
                    ImageAxis(imagePath: "assets/images/restaurant4.jpg"),
                    ImageAxis(imagePath: "assets/images/restaurant5.jpg"),
                    ImageAxis(imagePath: "assets/images/restaurant6.jpg"),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              Text("Find Us", style: TextStyle(fontSize: 27)),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

