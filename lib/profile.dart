import 'package:chitravihar/Widgets.dart';
import 'package:flutter/material.dart';
import 'AddToCart.dart';
import 'Login.dart';
import 'footer.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjFgX8CD1O-Zx_z6Ql7vSbzuNSMPQf9lYlaMHZx1so5wtWVxlOx8FawqnncU1Pc9vLrE4&usqp=CAU',
          scale: 5,
        ),
        // Add your logo
        actions: [
          Align(alignment: Alignment.centerLeft,),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Men', style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w800),),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Women', style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w800)),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Mobile Cover', style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w800)),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Shorts', style: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w800)),
              ),
            ],
          ),
          SizedBox(width: 350,),
          Container(
            // alignment: Alignment.centerLeft,
            height: 40,
            width: screenWidth * 0.3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: TextField(
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
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
            },
            icon: Icon(Icons.person_outline_sharp),
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart_outlined),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => CartPage()));
            },
          ),
        ],
        backgroundColor: Color(0xffeeeeee),
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 60,right: 60,top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.all(8), // Inner padding
                      child: ListView(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        children: [
                          SizedBox(height: 16,),
                          ListTile(leading: Icon(Icons.grid_view), title: Text("OverView"), onTap: (){setState(() {index=1;});}), Divider(endIndent: 10,indent: 10,),
                          SizedBox(height: 16,),
                          ListTile(leading: Icon(Icons.shopping_bag_outlined), title: Text("My Orders"), onTap: (){setState(() {index=2;});}),  Divider(endIndent: 10,indent: 10,),
                          SizedBox(height: 16,),
                          ListTile(leading: Icon(Icons.wallet_giftcard), title: Text("My Wallet"), onTap: () {setState(() {index=3;});}), Divider(endIndent: 10,indent: 10,),
                          SizedBox(height: 16,),
                          ListTile(leading: Icon(Icons.location_on_outlined), title: Text("My Addresses"), onTap: () {setState(() {index=4;});}), Divider(endIndent: 10,indent: 10,),
                          SizedBox(height: 16,),
                          ListTile(leading: Icon(Icons.person_2_outlined), title: Text("My Profile"), onTap: () {setState(() {index=5;});}),  Divider(endIndent: 10,indent: 10,),
                          SizedBox(height: 16,),
                          ListTile(leading: Icon(Icons.logout,color: Colors.redAccent,), title: Text("Logout",style: TextStyle(color: Colors.redAccent),), onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));}),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 30,),
                  Expanded(
                    flex: 3,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        height: size.height*0.9,
                        child: renderWidgetBasedOnIndex(),
                      ),
                    ),
                  ),
                  // print(index)
                ],
              ),
            ),

            SizedBox(height: 20,),
            Container(
              width: double.infinity,
              color: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                  Row(
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
    );
  }
  Widget renderWidgetBasedOnIndex() {
    if (index == 1) {
      return widgets();
    }else if (index == 2) {
      return MyOrders();
    }else if (index == 3) {
      return MyWallets();
    }else if (index == 4) {
      return Adresses();
    }else if (index == 5) {
      return ProfileEditForm();
    }else {
      return Center(child: Text('Please select a page'));
    }
  }
}
