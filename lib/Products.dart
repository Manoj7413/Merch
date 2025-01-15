import 'package:chitravihar/MainProduct.dart';
import 'package:flutter/material.dart';

class products extends StatefulWidget {
  @override
  State<products> createState() => _productsState();
}

class _productsState extends State<products> {
  bool isCheck = false;
  bool isCheck1 = false;
  bool isCheck2 = false;
  bool isCheck3 = false;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bewakoof',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 10),
          Icon(Icons.favorite_border, color: Colors.black),
          SizedBox(width: 10),
          Icon(Icons.shopping_bag_outlined, color: Colors.black),
          SizedBox(width: 10),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            Divider(color: Colors.grey, thickness: 0.5),
            SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.only(left: 360,right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Jackets 239 Products',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Icon(Icons.sort, color: Colors.black),
                      SizedBox(width: 5),
                      Text('Sort by: Price: High to Low'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Filters Column
                  Container(
                    width: screenWidth * 0.25, // 25% of screen width for filters
                    padding: const EdgeInsets.only(left: 70),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Filters', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                        Divider(indent: 0,endIndent: 25,),
                        Text('G e n d e r', style: TextStyle(fontWeight: FontWeight.bold)),
                        CheckboxListTile(
                          title: Text('Men'),
                          value: isCheck,
                          onChanged: (value) {
                            setState(() {
                              isCheck = value! ;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: Text('Women'),
                          value: isCheck1,
                          onChanged: (value) {
                            setState(() {
                              isCheck1 = value! ;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: Text('Unisex'),
                          value: isCheck2,
                          onChanged: (value) {
                            setState(() {
                              isCheck2 = value! ;
                            });
                          },
                        ),
                        Divider(indent: 0,endIndent: 25,),
                        Text('S i z e s', style: TextStyle(fontWeight: FontWeight.bold)),
                        CheckboxListTile(
                          title: Text('S'),
                          value: isCheck3,
                          onChanged: (value) {
                            setState(() {
                              isCheck3 = value! ;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: Text('L'),
                          value: false,
                          onChanged: (value) {},
                        ),
                        CheckboxListTile(
                          title: Text('M'),
                          value: false,
                          onChanged: (value) {},
                        ),
                        CheckboxListTile(
                          title: Text('XL'),
                          value: false,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                  ),

                  // Product Grid
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: (screenWidth > 600) ? 3 : 2, // Adjust for responsiveness
                          crossAxisSpacing: 8,
                          mainAxisSpacing: 8,
                          childAspectRatio: 0.63, // Adjust card size
                        ),
                        itemCount: 3, // Replace with actual item count
                        itemBuilder: (context, index) {
                          return ProductCard();
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductPage()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.network(
                    'https://images.bewakoof.com/t1080/women-s-white-blue-speeding-typography-oversized-biker-jacket-659456-1735293080-1.jpg', // Replace with actual image URL
                    height: 390,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    child: Container(
                      color: Colors.black38,
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: Text(
                        'OVERSIZED FIT',
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                  Positioned(
                  bottom: 8,
                    left: 8,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                      child: Row(
                        children: [
                          Icon(Icons.star,size: 14,color: Colors.amber,),
                          SizedBox(width: 1,),
                          Text(
                            '4.7',
                            style: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold,),
                          ),
                          SizedBox(width: 2,),
                        ],
                      ),
                    )
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Wearduds',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        IconButton(
                            onPressed: (){},
                            icon: Icon(Icons.favorite_border_rounded,size: 20,),
                        )
                      ],
                    ),
                    Text(
                      "Women's White & Blue Speeding Typography",
                      style: TextStyle(fontSize: 13),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Text('₹2,759', style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 5),
                        Text('₹4,599',
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough, color: Colors.grey)),
                        SizedBox(width: 5),
                        Text('40% off', style: TextStyle(color: Colors.green)),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black12,width: 1)
                      ),
                        child: Text('COMFORT FLEECE FABRIC', style: TextStyle(fontSize: 12))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
