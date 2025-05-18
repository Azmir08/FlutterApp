import 'package:flutter/material.dart';
import 'package:sneaker_shop/models.dart/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Asics",
      price: "RM 150",
      imagePath: "lib/images/asics.jpg",
      description: "The asics shoes has been released now",
    ),
    Shoe(
      name: "New Balance",
      price: "RM 200",
      imagePath: "lib/images/newBalance.jpg",
      description: "The new balance shoes has been released now",
    ),
    Shoe(
      name: "Nike Dunk",
      price: "RM 400",
      imagePath: "lib/images/nikeDunk.jpg",
      description: "The nike shoes has been released now",
    ),
    Shoe(
      name: "Under Armour",
      price: "RM 300",
      imagePath: "lib/images/underArmour.jpg",
      description: "The under armour shoes has been released now",
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
