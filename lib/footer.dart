
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  final String title;
  final List<String> items;

  FooterSection({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          ...items.map((item) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              item,
              style: TextStyle(color: Colors.white),
            ),
          )),
        ],
      ),
    );
  }
}