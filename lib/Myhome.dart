import 'package:carousel_slider/carousel_slider.dart';
import 'package:chitravihar/AddToCart.dart';
import 'package:chitravihar/footer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  int _currentIndex2 = 0;
  bool isHovered = false;
  final List<String> _images = [
    'assets/images/ladki.jpg',
    'assets/images/ladki.jpg',
    'assets/images/ladki.jpg',
    'assets/images/ladki.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjFgX8CD1O-Zx_z6Ql7vSbzuNSMPQf9lYlaMHZx1so5wtWVxlOx8FawqnncU1Pc9vLrE4&usqp=CAU',scale: 5,), // Add your logo
        actions: [
          Align(alignment: Alignment.centerLeft,),
          Row(
            children: [
              TextButton(
                  onPressed: (){},
                  child: Text('Men',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800),),
              ),
              TextButton(
                onPressed: (){},
                child: Text('Women',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800)),
              ),
              TextButton(
                onPressed: (){},
                child: Text('Mobile Cover',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800)),
              ),
              TextButton(
                onPressed: (){},
                child: Text('Shorts',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w800)),
              ),
            ],
          ),
          SizedBox(width: 350,),
          Container(
            // alignment: Alignment.centerLeft,
            height: 40,
            width: screenWidth*0.3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Search....',
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                prefixIcon: Icon(Icons.search),
                hintStyle: TextStyle(
                  height: 2.7,
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            height: 20,
            child: VerticalDivider(
              color: Colors.grey, // Color of the line
              thickness: 1, // Line thickness
              width: 10,
            ),
          ),
          MouseRegion(
            onEnter: (_)=>setState(() =>isHovered=true),
            onExit: (_)=>setState(() =>isHovered=false),
            child: TextButton(
                onPressed: (){},
                child: AnimatedDefaultTextStyle(
                  duration: Duration(milliseconds: 100),
                  style: TextStyle(fontSize:isHovered ? 16 : 16, fontWeight: FontWeight.bold, color: Colors.black),
                  child: Text("LOGIN"),
                ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CartPage()));
            },
          ),
        ],
        backgroundColor: Color(0xffeeeeee),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          Divider(color: Colors.grey, thickness: 0.5),
          Container(
            height: 80,
            width: screenWidth,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  tabItem('MEN'),
                  tabItem('WOMEN'),
                  tabItem('TRADITIONAL'),
                  tabItem('CUSTOMISATION'),
                  tabItem('WINTER WEAR'),
                  tabItem('ACCESSORIES'),
                  tabItem('SNEAKERS'),
                ],
              ),
            ),
          ),
          // Scrollable content
          Flexible(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Carousel Slider
                  CarouselSlider(
                    items: _images.map((imagePath) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5,vertical: 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), // Rounded corners for the image
                          border: Border.all(color: Colors.blue, width: 2), // Optional: Add a border
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10), // Clip the image corners
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: 500,
                      autoPlay: true,
                      enlargeCenterPage: false,
                      viewportFraction: 0.3,
                      autoPlayInterval: Duration(seconds: 3),
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index; // Update the active index
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _images.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => setState(() {
                          _currentIndex = entry.key;
                        }),
                        child: Container(
                          width: 8.0,
                          height: 8.0,
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndex == entry.key
                                ? Colors.blue // Active indicator color
                                : Colors.blue.withOpacity(0.3), // Inactive indicator color
                          ),
                        ),
                      );
                    }).toList(),
                  ),

                  SizedBox(height: 20,),
                  Align(alignment:Alignment.center,child: Text("Latest Collections",style: TextStyle(fontSize: 30),)),
                  CarouselSlider(
                    items: _images.map((imagePath) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 5,vertical: 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10), // Rounded corners for the image
                          border: Border.all(color: Colors.blue, width: 2), // Optional: Add a border
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10), // Clip the image corners
                          child: Image.asset(
                            imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }).toList(),
                    options: CarouselOptions(
                      height: 450,
                      autoPlay: true,
                      // enlargeCenterPage: true,
                      viewportFraction: 0.3, // Adjust for minimal spacing between items
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex2 = index; // Update the active index
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: _images.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => setState(() {
                          _currentIndex2 = entry.key;
                        }),
                        child: Container(
                          width: 8.0,
                          height: 8.0,
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: _currentIndex2 == entry.key
                                ? Colors.blue // Active indicator color
                                : Colors.blue.withOpacity(0.3), // Inactive indicator color
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  //for men
                  SizedBox(height: 20,),
                  Align(alignment:Alignment.center,child: Text(" Shop by Category- Men",style: TextStyle(fontSize: 30),)),
                  Center(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 10,
                        mainAxisSpacing: 10, // Vertical spacing between items
                        childAspectRatio: 2 / 3, // Adjust the width-to-height ratio
                      ),
                      itemCount: 15,
                      shrinkWrap: true,

                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                            color: index.isEven ? Colors.blue : Colors.red,
                            child: Center(
                              child: Text('$index'),
                            ),
                        );
                      },
                    ),
                  ),
                  //for women
                  SizedBox(height: 20,),
                  Align(alignment:Alignment.center,child: Text(" Shop by Category- Women",style: TextStyle(fontSize: 30),)),
                  Center(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 10,
                        mainAxisSpacing: 10, // Vertical spacing between items
                        childAspectRatio: 2 / 3, // Adjust the width-to-height ratio
                      ),
                      itemCount: 15,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          color: index.isEven ? Colors.blue : Colors.red,
                          child: Center(
                            child: Text('$index'),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    color: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Customer Service Section
                            FooterSection(
                              title: "CUSTOMER SERVICE",
                              items: const [
                                "Contact Us",
                                "Track Order",
                                "Return Order",
                                "Cancel Order",
                                "15 Days Return Policy*",
                                "Cash On Delivery*",
                              ],
                            ),
                            // Company Section
                            FooterSection(
                              title: "COMPANY",
                              items: const [
                                "About Us",
                                "Terms & Conditions",
                                "Privacy Policy",
                                "We are Hiring",
                              ],
                            ),
                            // Connect With Us Section
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "CONNECT WITH US",
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.facebook, color: Colors.white),
                                    SizedBox(width: 5),
                                    Text(
                                      "4.7M People like this",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Icon(Icons.inbox, color: Colors.white),
                                    SizedBox(width: 5),
                                    Text(
                                      "1M People like this",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20),
                                Row(
                                  children: [
                                    Icon(Icons.twelve_mp, color: Colors.white),
                                    SizedBox(width: 10),
                                    Icon(Icons.pin_end_outlined, color: Colors.white),
                                    SizedBox(width: 10),
                                    Icon(Icons.apple, color: Colors.white),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        // App Download and Payment Methods
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "DOWNLOAD THE APP",
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                // Row(
                                //   children: [
                                //     Image.asset('assets/google_play.png', height: 30),
                                //     SizedBox(width: 10),
                                //     Image.asset('assets/app_store.png', height: 30),
                                //   ],
                                // ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "100% SECURE PAYMENT",
                                  style: TextStyle(
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 10),
                                // Row(
                                //   children: [
                                //     Image.network(
                                //       'https://example.com/image.jpg',
                                //       fit: BoxFit.cover,
                                //     ),
                                //     SizedBox(width: 10),
                                //     Image.network(
                                //       'https://example.com/image.jpg',
                                //       fit: BoxFit.cover,
                                //     ),
                                //     SizedBox(width: 10),
                                //     Image.network(
                                //       'https://example.com/image.jpg',
                                //       fit: BoxFit.cover,
                                //     ),
                                //     SizedBox(width: 10),
                                //     Image.network(
                                //       'https://example.com/image.jpg',
                                //       fit: BoxFit.cover,
                                //     ),
                                //   ],
                                // ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

Widget tabItem(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
    child: Text(
      title,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    ),
  );
}

Widget carouselItem(String imagePath, String title, String subtitle) {
  return Stack(
    children: [
      Image.asset(
        imagePath,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
      Positioned(
        bottom: 30,
        left: 20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (subtitle.isNotEmpty)
              Text(
                subtitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
          ],
        ),
      ),
    ],
  );
}

Widget gridItem(String imagePath, String title) {
  return Card(
    elevation: 40,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    color: Colors.white,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(imagePath, height: 80),
        SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}
}
//
// const Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text(
// 'Jackets 239 Products',
// style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// ),
// Row(
// children: [
// Icon(Icons.sort, color: Colors.black),
// SizedBox(width: 5),
// Text('Sort by: Price: High to Low'),
// ],
// ),
// ],
// );