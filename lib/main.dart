import 'package:chitravihar/AddToCart.dart';
import 'package:chitravihar/MainProduct.dart';
import 'package:chitravihar/Myhome.dart';
import 'package:chitravihar/Products.dart';
import 'package:chitravihar/Thumbnail.dart';
import 'package:chitravihar/profile.dart';
import 'package:flutter/material.dart';
import 'Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}