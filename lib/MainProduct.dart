import 'package:carousel_slider/carousel_slider.dart';
import 'package:chitravihar/Thumbnail.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final List<String> images = [
    'https://images.bewakoof.com/t1080/men-s-brown-graphic-printed-oversized-sweatshirt-644530-1735297852-1.jpg',
    'https://images.bewakoof.com/t1080/men-s-brown-graphic-printed-oversized-sweatshirt-644530-1735297856-2.jpg',
    'https://images.bewakoof.com/t1080/men-s-brown-graphic-printed-oversized-sweatshirt-644530-1735297869-5.jpg',
    'https://images.bewakoof.com/t1080/men-s-brown-graphic-printed-oversized-sweatshirt-644530-1735297864-4.jpg',
  ];

  int _currentIndex = 0;
  final CarouselSliderController _carouselController = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bewakoof®'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thumbnail list on the left
            Column(
              children: images.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = entry.key;
                    });
                    _carouselController.jumpToPage(_currentIndex);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: _currentIndex == entry.key ? Colors.black : Colors.grey,
                      ),
                    ),
                    child: Image.network(
                      entry.value,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
            ),

            // Main image carousel
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CarouselSlider(
                    items: images.map((imageUrl) {
                      return Image.network(imageUrl, fit: BoxFit.cover);
                    }).toList(),
                    options: CarouselOptions(
                      height: 560,
                      viewportFraction: 1,
                      initialPage: _currentIndex,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                    carouselController: _carouselController,
                  ),
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: images.asMap().entries.map((entry) {
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == entry.key
                              ? Colors.black
                              : Colors.grey,
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 16),

            // Product details on the right
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Men's Brown Graphic Printed Oversized Sweatshirt",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Pricing
                    Row(
                      children: const [
                        Text(
                          '₹799',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '₹2,799',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '71% OFF',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Inclusive of all taxes',
                      style: TextStyle(color: Colors.grey),
                    ),

                    const SizedBox(height: 16),

                    // Color options
                    const Text(
                      'Colour Options: Chocolate Tarte',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                            color: Colors.brown,
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),

                    // Size options
                    const Text(
                      'Select Size',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    Wrap(
                      spacing: 8,
                      children: ['S', 'M', 'L', 'XL', '2XL']
                          .map((size) => ChoiceChip(
                        label: Text(size),
                        selected: false,
                      ))
                          .toList(),
                    ),

                    const SizedBox(height: 16),

                    // Add to Bag and Wishlist
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.yellow,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.shopping_cart_outlined,size: 20,),
                                SizedBox(width: 5,),
                                const Text('ADD TO BAG',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              )
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.favorite_border_rounded,size: 20,),
                                SizedBox(width: 5,),
                                const Text('WISHLIST',style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),
                    const Divider(
                      color: Colors.grey,
                      thickness: 0.5,
                    ),
                    const SizedBox(height: 10),

                    Text('Save Extra With These Offers',style: TextStyle(fontWeight: FontWeight.bold),),

                    const SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Offers Section
                        Container(
                          padding: const EdgeInsets.all(12.0),
                          color: Colors.green.shade50,
                          child: Row(
                            children: [
                              Icon(Icons.local_offer, color: Colors.green),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  "Get instant 10% OFF on all orders above Rs.1499. Coupon code - MAD10",
                                  style: TextStyle(
                                    color: Colors.green.shade800,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Delivery Details Section
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: const [
                                Icon(Icons.location_on_outlined, color: Colors.black87, size: 30,),
                                SizedBox(width: 8),
                                Text(
                                  "Check for Delivery Details",
                                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Expanded(
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "Enter Pincode",
                                      contentPadding: const EdgeInsets.symmetric(
                                        vertical: 12.0, // Controls vertical padding
                                        horizontal: 16.0, // Controls horizontal padding
                                      ),
                                      suffix: TextButton(
                                        onPressed: () {  },
                                        child: Text('Check', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Container(
                              padding: const EdgeInsets.all(12),
                              color: Colors.blue.shade50,
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.local_shipping, color: Colors.blue),
                                  SizedBox(width: 8),
                                  Text(
                                    "This product is eligible for FREE SHIPPING",
                                    style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: 17),

                        // Key Highlights Section
                        const Text(
                          "Key Highlights",
                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        const SizedBox(height: 8),
                        Table(
                          columnWidths: const {
                            0: FlexColumnWidth(8),
                            1: FlexColumnWidth(3),
                          },
                          children: const [
                            TableRow(
                              children: [
                                Text("Design", style: TextStyle(color: Colors.grey)),
                                Text("Graphic Print", style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text("Fit", style: TextStyle(color: Colors.grey)),
                                Text("Oversized Fit", style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text("Neck", style: TextStyle(color: Colors.grey)),
                                Text("Round Neck", style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text("Occasion", style: TextStyle(color: Colors.grey)),
                                Text("Winter wear", style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text("Sleeve Style", style: TextStyle(color: Colors.grey)),
                                Text("Full Sleeve", style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            TableRow(
                              children: [
                                Text("Wash Care", style: TextStyle(color: Colors.grey)),
                                Text("Machine wash as per tag", style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Product Description Section
                              ExpansionTile(
                                title: Row(
                                  children: [
                                    Icon(Icons.list_alt),
                                    SizedBox(width: 5,),
                                    Text(
                                      "Product Description",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Manufacture, Care and Fit"),
                                  ),
                                ],
                              ),

                              // 15 Days Returns & Exchange Section
                              ExpansionTile(
                                title: Row(
                                  children: [
                                    Icon(Icons.currency_exchange,size: 20,),
                                    SizedBox(width: 5,),
                                    Text(
                                      "15 Days Returns & Exchange",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                // subtitle: Text("Know about return & exchange policy"),
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Easy returns up to 15 days of delivery. Exchange available on select pincodes.",
                                    ),
                                  ),
                                ],
                              ),
                              // Icons with labels
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 16.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: [
                                        Icon(Icons.payment, color: Colors.yellow),
                                        SizedBox(height: 4),
                                        Text("100% SECURE PAYMENT"),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Icon(Icons.refresh, color: Colors.blue),
                                        SizedBox(height: 4),
                                        Text("EASY RETURNS & INSTANT REFUNDS"),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Icon(Icons.verified, color: Colors.orange),
                                        SizedBox(height: 4),
                                        Text("100% GENUINE PRODUCT"),
                                      ],
                                    ),
                                  ],
                                ),
                              ),

                              Divider(thickness: 1),

                              // Product Reviews Section
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text(
                                  "Product Reviews",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Row(
                                  children: [
                                    Text("88% of verified buyers recommend this product"),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        Text(
                                          "4.5",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 40,
                                          ),
                                        ),
                                        Text("443 ratings"),
                                        Row(
                                          children: List.generate(5, (index) => Icon(Icons.star, color: Colors.yellow, size: 16),
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(5)
                                            )
                                          ),
                                          onPressed: () {},
                                          child: Text("RATE",style: TextStyle(fontWeight: FontWeight.bold),),
                                        ),
                                      ],
                                    ),
                                    SizedBox(width: 16),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          RatingRow(stars: 5, count: 255, percentage: 0.58),
                                          RatingRow(stars: 4, count: 134, percentage: 0.32),
                                          RatingRow(stars: 3, count: 54, percentage: 0.10),
                                          RatingRow(stars: 2, count: 0, percentage: 0.0),
                                          RatingRow(stars: 1, count: 0, percentage: 0.0),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RatingRow extends StatelessWidget {
  final int stars;
  final int count;
  final double percentage;

  const RatingRow({
    required this.stars,
    required this.count,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("$stars★"),
        SizedBox(width: 8),
        Expanded(
          child: LinearProgressIndicator(
            value: percentage,
            backgroundColor: Colors.grey.shade300,
            color: Colors.green,
          ),
        ),
        SizedBox(width: 8),
        Text("($count)"),
      ],
    );
  }
}

