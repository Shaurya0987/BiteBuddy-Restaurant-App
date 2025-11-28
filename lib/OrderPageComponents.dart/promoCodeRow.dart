import 'package:flutter/material.dart';

class PromoCodeRow extends StatelessWidget {
  const PromoCodeRow({
    super.key,
    required this.promoCodeController,
  });

  final TextEditingController promoCodeController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: promoCodeController,
            decoration: InputDecoration(
              hintText: "Enter Promo Code",
              contentPadding: EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 14,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.deepOrange,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        SizedBox(width: 5,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 5),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8)
              ),
              minimumSize: Size(70,50),
              backgroundColor: Colors.grey.shade200
            ),
            onPressed: (){},
            child: Text("Apply",style: TextStyle(color: Colors.black,fontSize: 16),)
            ),
        )
      ],
    );
  }
}
