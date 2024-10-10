import 'package:e_commerce/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '243',
        imagePath: 'assets/images/1.jpg',
        description:
            'The forward-thinking design of his latest signature sheo.'),
    Shoe(
        name: 'Air Jordan',
        price: '240',
        imagePath: 'assets/images/2.jpg',
        description:
            'you\'v got the hops and the speed-lace up in shoes that enhance'),
    Shoe(
        name: 'KD Treys',
        price: '280',
        imagePath: 'assets/images/3.jpg',
        description:
            'A secure midfoot strap is suited for scoring binges and defensive'),
    Shoe(
        name: 'Kyrie',
        price: '190',
        imagePath: 'assets/images/4.jpg',
        description:
            'Bouncy cushioning is paired with sof yet supportive foam for ')
,
 Shoe(
        name: 'Zoom FREAK',
        price: '243',
        imagePath: 'assets/images/1.jpg',
        description:
            'The forward-thinking design of his latest signature sheo.'),
    Shoe(
        name: 'Air Jordan',
        price: '240',
        imagePath: 'assets/images/2.jpg',
        description:
            'you\'v got the hops and the speed-lace up in shoes that enhance'),
    Shoe(
        name: 'KD Treys',
        price: '280',
        imagePath: 'assets/images/3.jpg',
        description:
            'A secure midfoot strap is suited for scoring binges and defensive'),
  
    Shoe(
        name: 'Kyrie',
        price: '190',
        imagePath: 'assets/images/4.jpg',
        description:  'A secure midfoot strap is suited for scoring binges and defensive'),
  
          ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
