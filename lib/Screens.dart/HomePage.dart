import 'package:bitebuddy/Components/AppBarOfHome.dart';
import 'package:bitebuddy/Components/HomeImageBanner.dart';
import 'package:bitebuddy/Components/MenuAndReservationcontainer.dart';
import 'package:bitebuddy/Components/ThankYouContainer.dart';
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
              ThankYouContainer(),
              
            ],
          ),
        ),
      ),
    );
  }
}

