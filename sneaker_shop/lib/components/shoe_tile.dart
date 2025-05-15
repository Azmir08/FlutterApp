import 'package:flutter/material.dart';
import 'package:sneaker_shop/models.dart/shoe.dart';

class ShoeTile extends StatelessWidget {
  ShoeTile({super.key, required this.shoe});
  Shoe shoe;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          //shoe pic
          Image.asset(shoe.imagePath),

          //description

          //price + details

          //button to add to cart
        ],
      ),
    );
  }
}
