import 'package:flutter/material.dart';
import 'package:suits_app/views/My_Wishlist/My_Wishlist_view.dart';
import 'package:suits_app/views/splash_view.dart';

void main() {
  runApp(const Suits());
}

class Suits extends StatelessWidget {
  const Suits({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp( home: MyWishlistView(), debugShowCheckedModeBanner: false, ) ;
  }
}