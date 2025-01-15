import 'package:flutter/material.dart';

class RecommendedProducts extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      "image":
      "https://via.placeholder.com/150", // Replace with actual image URL
      "tag": "OVERSIZED FIT",
      "name": "Bewakoof®",
      "description": "Women's Black Oversized Joggers",
      "price": "₹999",
      "originalPrice": "₹2,699",
      "discount": "62% off",
      "rating": "4.5"
    },
    {
      "image":
      "https://via.placeholder.com/150", // Replace with actual image URL
      "tag": "FEW LEFT",
      "name": "Bewakoof Air® 1.0",
      "description": "Women's Black Super Loose Fit",
      "price": "₹815",
      "originalPrice": "₹1,799",
      "discount": "54% off",
      "rating": "4.4"
    },
    {
      "image":
      "https://via.placeholder.com/150", // Replace with actual image URL
      "tag": "SUPER LOOSE FIT",
      "name": "Bewakoof Air® 1.0",
      "description": "Women's Black Super Loose Fit",
      "price": "₹1,328",
      "originalPrice": "₹1,949",
      "discount": "31% off",
      "rating": "4.5"
    },
    {
      "image":
      "https://via.placeholder.com/150", // Replace with actual image URL
      "tag": "BUY 2 FOR 1699",
      "name": "Bewakoof Air® 1.0",
      "description": "Women's Black Super Loose Fit",
      "price": "₹912",
      "originalPrice": "₹1,649",
      "discount": "44% off",
      "rating": "4.5"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "You May Also Like",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 300, // Adjust height based on your requirement
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return Container(
                width: 180,
                margin: EdgeInsets.only(
                  left: index == 0 ? 16.0 : 8.0,
                  right: index == products.length - 1 ? 16.0 : 8.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(8.0),
                          ),
                          child: Image.network(
                            product["image"]!,
                            height: 160,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Positioned(
                          top: 8,
                          left: 8,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8.0, vertical: 4.0),
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.7),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Text(
                              product["tag"]!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            product["name"]!,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            product["description"]!,
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.grey.shade700,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              Text(
                                product["price"]!,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                product["originalPrice"]!,
                                style: const TextStyle(
                                  fontSize: 12,
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                product["discount"]!,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.green,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 16,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                product["rating"]!,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
