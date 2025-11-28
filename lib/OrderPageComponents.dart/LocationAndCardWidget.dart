import 'package:flutter/material.dart';

class LocationAndCardWidget extends StatelessWidget {
  const LocationAndCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
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
        ],
      ),
    );
  }
}