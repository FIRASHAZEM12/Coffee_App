import 'package:flutter/material.dart';

import 'cofee.dart';

class CoffeeShop extends ChangeNotifier { 
  //cofee for sale list 
  final List<Coffee> _shop = [
    //black coffee
    Coffee(
    name: 'Long Black',
    price:"2DT",
    imagePath:"lib/images/coffee-cup.png",
    ),
    // latte
       Coffee(
    name: 'latte',
    price:"2.5DT",
    imagePath:"lib/images/latte-art.png",
    ),
    //espresso
      Coffee(
    name: 'espresso',
    price:"1.5DT",
    imagePath:"lib/images/coffee.png",
    ),
    // iced coffee
      Coffee(
    name: 'Iced Coffee',
    price:"4DT",
    imagePath:"lib/images/latte.png",
    ),
  ];
  //user cart
  List<Coffee> _userCart = [];
  // get coffee list
  List<Coffee> get coffeeList => _shop;
  //get user cart
  List<Coffee> get UserCart => _userCart;
  //add item to cart
  void addItemToCart(Coffee cofee){
    _userCart.add(cofee);
    notifyListeners();
  }
  //remove item from cart
  void removeItemFromCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  } 

}