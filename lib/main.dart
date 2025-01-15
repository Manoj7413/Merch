import 'package:chitravihar/AddToCart.dart';
import 'package:chitravihar/MainProduct.dart';
import 'package:chitravihar/Products.dart';
import 'package:chitravihar/Thumbnail.dart';
import 'package:flutter/material.dart';
import 'Myhome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}