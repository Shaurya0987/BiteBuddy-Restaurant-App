import 'dart:ffi';

import 'package:bitebuddy/MenuPageComponents/AppBarOfMenuPage.dart';
import 'package:bitebuddy/MenuPageComponents/TagsWidget.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int selectedIndex = 0; // ⭐ which tag is active

  final List<String> tags = [
    "Appetizers",
    "Main Courses",
    "Snacks",
    "Desserts",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOfMenuPage(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(tags.length, (index) {
                    return TagsWidget(
                      text: tags[index],
                      isSelected: selectedIndex == index,
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    );
                  }),
                ),
              ),
              SizedBox(height: 30),
              Text("Appetizers", style: TextStyle(fontSize: 26)),
              SizedBox(height: 8),
              FoodContainer(title: "Bruschetta", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 12, imagePath: 'assets/images/picture6.jpg',),
              FoodContainer(title: "Garlic Bread", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 25, imagePath: 'assets/images/picture2.jpg',),
              FoodContainer(title: "Calmiri Fritti", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 23, imagePath: 'assets/images/picture3.jpg',),
              FoodContainer(title: "Spiral Fry", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 7, imagePath: 'assets/images/picture4.jpg',),
              FoodContainer(title: "Boiled Bun", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 9, imagePath: 'assets/images/picture5.jpg',),

              Text("Main Courses", style: TextStyle(fontSize: 26)),
              SizedBox(height: 8),
              FoodContainer(title: "Chilli Sushi", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 25, imagePath: 'assets/images/picture7.jpg',),
              FoodContainer(title: "Fried Meat", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 42, imagePath: 'assets/images/picture8.jpg',),
              FoodContainer(title: "Veg Thali", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 16, imagePath: 'assets/images/picture9.jpg',),
              FoodContainer(title: "Frilled Poha", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 19, imagePath: 'assets/images/picture10.jpg',),
              FoodContainer(title: "Tadka Chicken", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 34, imagePath: 'assets/images/picture11.jpg',),

              Text("Snacks", style: TextStyle(fontSize: 26)),
              SizedBox(height: 8),
              FoodContainer(title: "Omelette pasta", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 25, imagePath: 'assets/images/picture12.jpg',),
              FoodContainer(title: "Spagetti", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 25, imagePath: 'assets/images/picture13.jpg',),
              FoodContainer(title: "Rolled Sandwitch", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 25, imagePath: 'assets/images/picture14.jpg',),
              FoodContainer(title: "Burger", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 25, imagePath: 'assets/images/picture15.jpg',),
              FoodContainer(title: "Samose", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 25, imagePath: 'assets/images/picture17.jpg',),
              
              Text("Deserts", style: TextStyle(fontSize: 26)),
              SizedBox(height: 8),
              FoodContainer(title: "Lousna", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 25, imagePath: 'assets/images/picture18.jpg',),
              FoodContainer(title: "Brownie", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 25, imagePath: 'assets/images/picture19.jpg',),
              FoodContainer(title: "Pudding", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 25, imagePath: 'assets/images/picture20.jpg',),
              FoodContainer(title: "Truffle", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 25, imagePath: 'assets/images/picture21.jpg',),
              FoodContainer(title: "Pan Cake", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 25, imagePath: 'assets/images/picture22.jpg',),
              FoodContainer(title: "Peanut Cake", subtitle: "Toasted bread,fresh,tomatoes,garlic,basil and olive oil", price: 25, imagePath: 'assets/images/picture23.jpg',),
              
              SizedBox(height: 20,),
              Container(
                height:60,
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadiusGeometry.circular(24)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.shopping_cart_rounded,color: Colors.white,size: 30,),
                      Text("View Cart",style: TextStyle(color: Colors.white,fontSize: 20),),
                      Text("\$32.49",style: TextStyle(color: Colors.white,fontSize: 17),)
                    ],
                  ),
                ),
              ),
              
              SizedBox(height: 3,)
            ],
          ),
        ),
      ),
    );
  }
}

class FoodContainer extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final int price;
  
  const FoodContainer({
    super.key, required this.title, required this.subtitle, required this.price, required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        height: 220,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300, width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 3,
              offset: const Offset(2, 2),
            ),
          ],
        ),
      
        child: Row(
          children: [
            // LEFT SIDE TEXTS
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
      
                  const SizedBox(height: 6),
      
                  Text(
                    subtitle,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade600,
                    ),
                  ),
      
                  const SizedBox(height: 12),
      
                  Text(
                    "\$${price}",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange,
                    ),
                  ),
      
                  const SizedBox(height: 5),
      
                  // ADD BUTTON (DECORATIVE)
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 8,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      elevation: 3,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.add, color: Colors.white),
                        SizedBox(width: 6),
                        Text(
                          "Add",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
      
            const SizedBox(width: 12),
      
            // RIGHT SIDE IMAGE
            Expanded(
              flex: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  height: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
