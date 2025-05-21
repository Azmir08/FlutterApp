import 'package:flutter/material.dart';
import 'package:minimalist_shop/models/product.dart';
import 'package:minimalist_shop/models/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  //remove item from cart method
  void removeItemFromCart(BuildContext context, Product product) {
    //show a dialog box to ask user to confirm to remove item from cart
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            content: Text("Remove this item to your cart?"),
            actions: [
              //cancel button
              MaterialButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Cancel"),
              ),

              //Yes button
              MaterialButton(
                onPressed: () {
                  //pop dialog box
                  Navigator.pop(context);

                  //add to cart
                  context.read<Shop>().removeFromCart(product);
                },
                child: Text("Yes"),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //get access to the cart
    final cart = context.watch<Shop>().cart;

    return Scaffold(
      appBar: AppBar(title: Text("Cart Page")),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Column(
        children: [
          //cart list
          Expanded(
            child: ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                //get individual item in cart
                final item = cart[index];

                //return as a cart tile UI
                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(item.price.toStringAsFixed(2)),
                  trailing: IconButton(
                    onPressed: () => removeItemFromCart(context, item),
                    icon: Icon(Icons.remove),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
