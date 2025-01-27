import 'package:chitravihar/profile.dart';
import 'package:flutter/material.dart';
import 'AddToCart.dart';

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final isWideScreen = screenWidth > 600;

    return Scaffold(
      appBar: AppBar(
        title: Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjFgX8CD1O-Zx_z6Ql7vSbzuNSMPQf9lYlaMHZx1so5wtWVxlOx8FawqnncU1Pc9vLrE4&usqp=CAU',
          scale: 5,),
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
      body: Row(
        children: [
          if (isWideScreen)
            Expanded(
              flex: 1,
              child: Image.network(
                'https://images.bewakoof.com/uploads/grid/app/1x1-RepublicWeekend-common-1737715133.jpg',
                fit: BoxFit.cover,
              ),
            ),
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login / Signup",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Join us now to be a part of ChitraVihar® family.",
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(height: 32),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                        height: 48,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(8),
                          ),
                        ),
                        child: Row(
                          children: [
                            Text("+91",style: TextStyle(fontSize: 15),),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 48,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.horizontal(
                              right: Radius.circular(8),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter Mobile Number",
                              contentPadding:
                              EdgeInsets.symmetric(horizontal: 16),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[300],
                        padding: EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        minimumSize: Size(0, 50)
                      ),
                      onPressed: () {},
                      child: Text(
                        "CONTINUE",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 32),
                  Row(
                    children: [
                      Expanded(child: Divider(color: Colors.grey)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text("OR"),
                      ),
                      Expanded(child: Divider(color: Colors.grey)),
                    ],
                  ),
                  SizedBox(height: 32),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(color: Colors.grey),
                            ),
                              minimumSize: Size(0, 50)
                          ),
                          onPressed: () {},
                          icon: Icon(Icons.g_mobiledata, color: Colors.black,size: 25,),
                          label: Text(
                            "Google",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[200],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(color: Colors.grey),
                            ),
                              minimumSize: Size(0, 50)
                          ),
                          onPressed: () {},
                          icon: Icon(Icons.facebook, color: Colors.blue, size: 20,),
                          label: Text(
                            "Facebook",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "By creating an account or logging in, you agree with Bewakoof®’s Terms and Conditions and Privacy Policy.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
