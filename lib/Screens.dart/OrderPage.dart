import 'package:bitebuddy/OrderPageComponents.dart/AppBar.dart';
import 'package:bitebuddy/OrderPageComponents.dart/OrderItems.dart';
import 'package:bitebuddy/OrderPageComponents.dart/promoCodeRow.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  TextEditingController promoCodeController = TextEditingController();

  // ⭐ Separate counters (no lists)
  int count1 = 1;
  int count2 = 1;
  int count3 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarOfOrder(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Items",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 15),

              // ⭐ ITEM 1
              OrderItemWidget(
                title: "Spaghetti",
                subtitle: "Medium rare, no onions",
                imagePath: "assets/images/picture13.jpg",
                price: "\$15.99",
                count: count1,
                onIncrement: () {
                  setState(() => count1++);
                },
                onDecrement: () {
                  setState(() {
                    if (count1 > 1) count1--;
                  });
                },
              ),

              // ⭐ ITEM 2
              OrderItemWidget(
                title: "Chilli Sushi",
                subtitle: "Little spicy, crispy",
                imagePath: "assets/images/picture7.jpg",
                price: "\$25.50",
                count: count2,
                onIncrement: () {
                  setState(() => count2++);
                },
                onDecrement: () {
                  setState(() {
                    if (count2 > 1) count2--;
                  });
                },
              ),

              // ⭐ ITEM 3
              OrderItemWidget(
                title: "Brownie",
                subtitle: "Hot chocolate, tasty",
                imagePath: "assets/images/picture21.jpg",
                price: "\$7.23",
                count: count3,
                onIncrement: () {
                  setState(() => count3++);
                },
                onDecrement: () {
                  setState(() {
                    if (count3 > 1) count3--;
                  });
                },
              ),
              SizedBox(height: 15,),
              Text("Promo Code",style: TextStyle(
                fontSize: 23
              ),),
              SizedBox(height: 10,),
              PromoCodeRow(promoCodeController: promoCodeController),
              SizedBox(height: 15,),
              Text("Order Summary",style: TextStyle(fontSize: 21),),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Subtotal",style: TextStyle(color: Colors.grey.shade600,fontSize: 17),),
                  Text("\$29.49",style: TextStyle(fontSize: 15),)
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Delivery Fee",style: TextStyle(color: Colors.grey.shade600,fontSize: 17),),
                  Text("\$5.00",style: TextStyle(fontSize: 15),)
                ],
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Taxes & Fees",style: TextStyle(color: Colors.grey.shade600,fontSize: 17),),
                  Text("\$2.76",style: TextStyle(fontSize: 15),)
                ],
              ),
              SizedBox(height: 5,),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total",style: TextStyle(fontSize: 19),),
                    Text("\$37.25",style: TextStyle(fontSize: 19),)
                  ],
                ),
              ),
              Divider(),
              SizedBox(height: 20,),
              Card(
                elevation: 0,
                child: ListTile(
                  leading: Icon(Icons.location_on,color: Colors.grey.shade600,),
                  title: Text("123 Market St,San Francisco"),
                  subtitle: Text("Est. Delivery:30-45 min",style: TextStyle(color: Colors.grey.shade600,),),
                  trailing: Text("Change",style: TextStyle(color: Colors.blue,fontSize: 15),),
                ),
              ),
              SizedBox(height: 10,),
              Card(
                elevation: 0,
                child: ListTile(
                  leading: Icon(Icons.add_card,color: Colors.grey.shade600,),
                  title: Text("Visa****1234"),
                  subtitle: Text("Default payment method",style: TextStyle(color: Colors.grey.shade600,),),
                  trailing: Text("Change",style: TextStyle(color: Colors.blue,fontSize: 15),),
                ),
              ),
              SizedBox(height: 50,),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(12)
                ),
                child: Center(child: Text("Place Order  .  \$37.25",style: TextStyle(color: Colors.white,fontSize: 18),)),
              ),

              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}


