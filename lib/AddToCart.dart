import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xffeeeeee),
        // foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Cart Items Section
              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(50),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Align(alignment:Alignment.centerLeft, child: Text("My Bag (3 Items)",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87,))),
                        ),
                        SizedBox(height: 20,),
                        Container(
                          alignment: Alignment.centerLeft,
                          width: screenWidth*0.57,
                          padding: EdgeInsets.all(12),
                          child: Text(
                            "You are saving ₹4850 on this order",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                            // textAlign: TextAlign.center,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.green[50], // Light green background
                            border: Border.all(
                              color: Colors.green, // Border color
                              width: 1,         // Border width
                            ),
                            borderRadius: BorderRadius.circular(8), // Rounded corners
                          ),
                        ),
                        // Cart Items
                        ListView.builder(
                          itemCount: 5,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.all(14),
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  children: [
                                    // Product Image
                                    Padding(
                                      padding: EdgeInsets.all(8),
                                      child: Container(
                                        width: 80,
                                        height: 80,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          image: DecorationImage(
                                            image: AssetImage('assets/images/ladki.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                    // Product Details
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 8, horizontal: 12),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  'Bewakoof® Heavy Duty 1.0',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                  ),
                                                ),
                                                IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.multiply)),
                                              ],
                                            ),
                                            SizedBox(height: 4),
                                            Text(
                                              'Men\'s Green Graphic Printed Oversized Sweatshirt',
                                              style: TextStyle(fontSize: 15),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            SizedBox(height: 10),
                                            Text(
                                              'Hurry! Only 8 Left',
                                              style: TextStyle(fontSize: 12,color: Color(0xffe88658)),
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                            SizedBox(height: 10),
                                            Row(
                                              children: [
                                                Icon(Icons.fire_truck_outlined,size: 15,color: Colors.green,),
                                                SizedBox(width: 5,),
                                                Text(
                                                  'Ships in 2-3 days',
                                                  style: TextStyle(fontSize: 12,color: Colors.blueGrey),
                                                  maxLines: 2,
                                                  overflow: TextOverflow.ellipsis,
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 10),

                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.symmetric(horizontal: 6),
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                        color: Color(0xfff4f8fb), // Background color of the container
                                                        borderRadius: BorderRadius.circular(5), // Rounded corners for the container
                                                        border: Border.all(
                                                          color: Colors.grey, // Border color
                                                          width: 0.3, // Border width
                                                        ),
                                                      ),
                                                      child: DropdownButton<String>(
                                                        value: 'M',
                                                        items: ['S', 'M', 'L', 'XL', 'XXL'].map((String value) {
                                                          return DropdownMenuItem<String>(
                                                            value: value,
                                                            child: Text(
                                                              'Size: $value',
                                                              style: TextStyle(
                                                                color: Color(0xff1c6c9e),
                                                                // fontSize: 16,
                                                              ),
                                                            ),
                                                          );
                                                        }).toList(),
                                                        onChanged: (_) {},
                                                        underline: SizedBox(width: 0,),
                                                        iconEnabledColor: Color(0xff1c6c9e),
                                                        iconDisabledColor: Color(0xff1c6c9e),
                                                      ),
                                                    ),

                                                    SizedBox(width: 12),
                                                    Container(
                                                      padding: EdgeInsets.symmetric(horizontal: 6),
                                                      height: 30,
                                                      decoration: BoxDecoration(
                                                        color: Color(0xfff4f8fb), // Background color of the container
                                                        borderRadius: BorderRadius.circular(5), // Rounded corners for the container
                                                        border: Border.all(
                                                          color: Colors.grey, // Border color
                                                          width: 0.3, // Border width
                                                        ),
                                                      ),
                                                      child: DropdownButton<int>(
                                                        value: 1,
                                                        items: [1, 2, 3, 4, 5].map((int value) {
                                                          return DropdownMenuItem<int>(
                                                            value: value,
                                                            child: Text(
                                                              'Qnty: $value',
                                                              style: TextStyle(
                                                              color: Color(0xff1c6c9e),
                                                            ),),
                                                          );
                                                        }).toList(),
                                                        onChanged: (_) {},
                                                        underline: SizedBox(),
                                                        iconEnabledColor: Color(0xff1c6c9e),
                                                        iconDisabledColor: Color(0xff1c6c9e),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                // Price and Savings
                                                Column(
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text(
                                                          '₹1,299',
                                                          style: TextStyle(
                                                            fontSize: 20,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(width: 5),
                                                        Text(
                                                          '₹3,099',
                                                          style: TextStyle(fontSize: 12),
                                                        ),
                                                      ],
                                                    ),
                                                    Text(
                                                      'You saved ₹1,800',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.green,
                                                      ),
                                                    ),
                                                  ],
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
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Price Summary Section
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(left: 0,right: 70,top: 100),
                  child: Container(
                    height: screenHeight*0.57,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Coupons Section
                        SizedBox(height: 20,),
                        Text(
                          'Coupons & Offers',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        TextButton(
                          onPressed: () {},
                          child: Row(
                            children: [
                              Icon(Icons.card_giftcard),
                              SizedBox(width: 8),
                              Text('Apply Coupon / Gift Card'),
                            ],
                          ),
                        ),
                        Divider(height: 24, thickness: 1),
                        // Price Summary
                        Text(
                          'PRICE SUMMARY',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        buildSummaryRow('Total MRP (Incl. of taxes)', '₹7,947'),
                        buildSummaryRow('Bag Discount', '-₹4,850',
                            isDiscount: true),
                        buildSummaryRow('Delivery Fee', 'Free'),
                        Divider(height: 24, thickness: 1),
                        buildSummaryRow('Subtotal', '₹3,097', isBold: true),
                        SizedBox(height: 5),
                        Align(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                              text: 'Yayy! You get ',
                              style: TextStyle(color: Colors.black, fontSize: 13), // Default text style
                              children: [
                                TextSpan(
                                  text: 'FREE delivery',
                                  style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: ' on this order',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),  // Adjust the radius here
                            ),
                            backgroundColor: Colors.yellow[700],
                            minimumSize: Size(double.infinity, 50),
                          ),
                          child: Text('PROCEED', style: TextStyle(color: Colors.white),),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget buildSummaryRow(String label, String value,
      {bool isBold = false, bool isDiscount = false}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 14,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
              color: isDiscount ? Colors.green : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

