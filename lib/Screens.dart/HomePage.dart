import 'package:bitebuddy/Components/AppBarOfHome.dart';
import 'package:bitebuddy/Components/HomeImageBanner.dart';
import 'package:bitebuddy/Components/MenuAndReservationcontainer.dart';
import 'package:bitebuddy/Components/TodaysSpecialImages.dart';
import 'package:bitebuddy/Components/orderAndBookButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOfHome(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageBannerStart(),
              const SizedBox(height: 20),
              OrderandBookWidget(),
              const SizedBox(height: 20),
              MenuAndReservationcontainer(),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("Today's Special", style: TextStyle(fontSize: 21)),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, top: 0, bottom: 0),
                  child: Row(
                    children: [
                      TodaysSpeacialFoodImages(
                        image: Image(
                          image: AssetImage("assets/images/image6.jpg"),
                          fit: BoxFit.cover,
                        ),
                        title: "Bread Veggie",
                        subtitle: "Classic American",
                        price: "₹ 130.50",
                      ),
                      TodaysSpeacialFoodImages(
                        image: Image(
                          image: AssetImage("assets/images/image1.jpg"),
                          fit: BoxFit.cover,
                        ),
                        title: "Pasta Bolognese",
                        subtitle: "Classic Italian",
                        price: "₹ 200.10",
                      ),
                      TodaysSpeacialFoodImages(
                        image: Image(
                          image: AssetImage("assets/images/image9.jpg"),
                          fit: BoxFit.cover,
                        ),
                        title: "Chili Sussi",
                        subtitle: "Classic Japnese",
                        price: "₹ 450.80",
                      ),
                      TodaysSpeacialFoodImages(
                        image: Image(
                          image: AssetImage("assets/images/image8.jpg"),
                          fit: BoxFit.cover,
                        ),
                        title: "Madhuri Jalebi",
                        subtitle: "Classic Indian",
                        price: "₹ 280.60",
                      ),
                      TodaysSpeacialFoodImages(
                        image: Image(
                          image: AssetImage("assets/images/image7.jpg"),
                          fit: BoxFit.cover,
                        ),
                        title: "Tadka Pasta",
                        subtitle: "Classic Italian",
                        price: "₹ 140.20",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 350,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.deepOrange.shade100,
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
                          ), // full width + height 50
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                              12,
                            ), // rounded corners
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
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FaIcon(
                          FontAwesomeIcons.facebookF,
                          size: 30,
                        ), // ✔ facebook brand icon
                        SizedBox(width: 10),
                        FaIcon(
                          FontAwesomeIcons.instagram,
                          size: 30,
                        ), // ✔ instagram brand icon
                        SizedBox(width: 10),
                        FaIcon(
                          FontAwesomeIcons.twitter,
                          size: 30,
                        ), // ✔ twitter brand icon
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
