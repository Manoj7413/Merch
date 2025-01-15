import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductGallery extends StatefulWidget {
  @override
  _ProductGalleryState createState() => _ProductGalleryState();
}

class _ProductGalleryState extends State<ProductGallery> {
  final List<String> images = [
    'https://images.bewakoof.com/t1080/women-s-red-inner-peace-graphic-printed-boyfriend-t-shirt-295706-1720009662-1.jpg',
    'https://images.bewakoof.com/t1080/inner-peace-boyfriend-t-shirt-bold-red-295706-1656108914-2.jpg',
    'https://images.bewakoof.com/t1080/inner-peace-boyfriend-t-shirt-bold-red-295706-1656108924-4.jpg',
    'https://images.bewakoof.com/t1080/inner-peace-boyfriend-t-shirt-bold-red-295706-1656108930-5.jpg',
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Gallery'),
      ),
      body: Column(
        children: [
          // Main Image
          Expanded(
            child: CarouselSlider(
              items: images.map((imageUrl) {
                return Image.network(imageUrl, fit: BoxFit.cover, width: double.infinity);
              }).toList(),
              options: CarouselOptions(
                height: 800,
                viewportFraction: 0.4,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
            ),
          ),
          // Thumbnails
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: images.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => setState(() {
                  _currentIndex = entry.key;
                }),
                child: Container(
                  width: 80.0,
                  height: 80.0,
                  margin: EdgeInsets.symmetric(horizontal: 4.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: _currentIndex == entry.key ? Colors.red : Colors.grey,
                      width: 2,
                    ),
                  ),
                  child: Image.network(entry.value, fit: BoxFit.cover),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
