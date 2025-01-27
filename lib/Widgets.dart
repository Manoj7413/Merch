import 'package:chitravihar/Myhome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class widgets extends StatelessWidget {
  const widgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black87,width: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                color: Color(0xfffffae7),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9, // 90% of screen width
                  height: MediaQuery.of(context).size.height * 0.35, // 30% of screen height
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.yellow[700],
                            child: Text("M",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Manoj",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff494037)
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(
                                "bhanikom@gmail.com",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff4e5664),
                                ),
                              ),
                              SizedBox(height: 4,),
                              Text(
                                "7413976304",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xff4e5664),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      TextButton(
                        onPressed: () {

                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xffffd232), // Background color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: Size(MediaQuery.of(context).size.width * 0.4, MediaQuery.of(context).size.height * 0.08), // Responsive width and height
                        ),
                        child: Text(
                          "Edit Profile",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
            // Tribe Membership Card
            Expanded(
              child: Card(
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.black87,width: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                color:Color(0xfffffae7),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9, // 90% of screen width
                  height: MediaQuery.of(context).size.height * 0.35,
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Bewakoof Tribe",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "Upgrade to the premium experience now",
                        style: TextStyle(
                          color:Color(0xff4e5664),
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(children: [Icon(Icons.local_shipping_outlined, color: Color(0xffd0a548), size: 24), SizedBox(height: 8), Text("Free Shipping", style: TextStyle(fontSize: 12, color: Color(0xff4e5664)))]),
                          Column(children: [Icon(Icons.timer_outlined, color:  Color(0xffd0a548), size: 24), SizedBox(height: 8), Text("Early Access", style: TextStyle(fontSize: 12, color: Color(0xff4e5664)))]),
                          Column(children: [Icon(Icons.card_giftcard_outlined, color: Color(0xffd0a548), size: 24), SizedBox(height: 8), Text("VIP Support", style: TextStyle(fontSize: 12, color: Color(0xff4e5664)))]),
                        ],
                      ),
                      SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffffd232),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          minimumSize: Size(MediaQuery.of(context).size.width * 0.4, MediaQuery.of(context).size.height * 0.08),
                        ),
                        child: Text("Get Tribe Membership",style: TextStyle(color:  Colors.black87,fontSize: 20, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: SizedBox(
            height: 350,
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 2,
              children: [
                InkWell(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey,width: 0.5)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_bag_outlined,size: 30,),
                        SizedBox(height: 5,),
                        Text('My Orders',style: TextStyle(color: Color(0xff292d35),fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text('View, modify and track orders',style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey,width: 0.5)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.wallet_membership,size: 25,),
                        SizedBox(height: 5,),
                        Text('My Wallet',style: TextStyle(color: Color(0xff292d35),fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text('Chitravihar Wallet History\n and redeemed gift cards',style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey,width: 0.5)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.home_outlined,size: 30,),
                        SizedBox(height: 5,),
                        Text('My Addresses',style: TextStyle(color: Color(0xff292d35),fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text('Edit, add or remove addresses',style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey,width: 0.5)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.perm_identity_rounded,size: 30,),
                        SizedBox(height: 5,),
                        Text('My Profile',style: TextStyle(color: Color(0xff292d35),fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text('Edit personal info and change password',style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey,width: 0.5)
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.live_help_outlined,size: 30,),
                        SizedBox(height: 5,),
                        Text('Help & Support',style: TextStyle(color: Color(0xff292d35),fontWeight: FontWeight.bold),),
                        SizedBox(height: 5,),
                        Text('Reach out to us',style: TextStyle(color: Colors.grey),)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProfileEditForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 445,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "First Name",
                      border: OutlineInputBorder(),
                      hintText: "Enter your first name",
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  width: 445,
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Last Name",
                      border: OutlineInputBorder(),
                      hintText: "Enter your last name",
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: "Email ID",
                border: OutlineInputBorder(),
                hintText: "Enter your email",
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Mobile Number",
                  border: OutlineInputBorder(),
                  hintText: "Enter your mobile number",
                  suffix: TextButton(
                    onPressed: () {},
                    child: const Text("CHANGE"),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: "DOB",
                border: OutlineInputBorder(),
                hintText: "dd-mm-yyyy",
                suffixIcon: Icon(Icons.calendar_today),
              ),
            ),
            const SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: const Text(
                "Gender",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.yellow, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Rounded corners
                        side: BorderSide(color: Colors.black,width: 0.5,),
                      ),
                      minimumSize: Size(20, 50)
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Male",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black, // Text color
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8), // Rounded corners
                          side: BorderSide(color: Colors.black,width: 0.5,),
                        ),
                        minimumSize: Size(20, 50)
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Female",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black, // Text color
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8), // Rounded corners
                          side: BorderSide(color: Colors.black,width: 0.5,),
                        ),
                        minimumSize: Size(20, 50)
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Other",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black, // Text color
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                const Expanded(
                  child: Text(
                    "I want to receive order updates on WhatsApp",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: screenSize.width/3.5,
              height: screenSize.height * 0.07,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "SAVE CHANGES",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.grey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Adresses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Input Fields
            _buildTextField("First Name *"),
            SizedBox(height: 16),
            _buildTextField("Last Name *"),
            SizedBox(height: 16),
            _buildTextField("Mobile Number *", prefixText: "+91 -"),
            SizedBox(height: 16),

            Row(
              children: [
                Expanded(
                  child: _buildTextField("PIN Code/Postal Code/ZIP Code *"),
                ),
              ],
            ),
            SizedBox(height: 16),

            Row(
              children: [
                Expanded(child: _buildTextField("City *")),
                SizedBox(width: 16),
                Expanded(child: _buildTextField("State *")),
                SizedBox(width: 16),
                Expanded(child: _buildTextField("Country *")),
              ],
            ),
            SizedBox(height: 16),

            _buildTextField("Flat no/Building, Street name *"),
            SizedBox(height: 16),
            _buildTextField("Area/Locality *"),
            SizedBox(height: 16),
            _buildTextField("Landmark"),
            SizedBox(height: 16),

            // Buttons Section
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.orangeAccent, // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Rounded corners
                        side: BorderSide(color: Colors.black,width: 0.5,),
                      ),
                      minimumSize: Size(20,50)
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black, // Text color
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Rounded corners
                        side: BorderSide(color: Colors.black,width: 0.5,),
                      ),
                      minimumSize: Size(20, 50)
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Office",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black, // Text color
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                TextButton(
                  style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8), // Rounded corners
                        side: BorderSide(color: Colors.black,width: 0.5,),
                      ),
                      minimumSize: Size(20, 50)
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Other",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black, // Text color
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: screenWidth,
              height: screenHeight * 0.065,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[300],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "SAVE ADDRESS",
                  style: TextStyle(color:Colors.grey,fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      );
  }

  Widget _buildTextField(String label, {String? prefixText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        TextField(
          decoration: InputDecoration(
            prefixText: prefixText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          ),
        ),
      ],
    );
  }
}

class AddNewAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topLeft,
        child: InkWell(
          onTap: (){},
          child: Container(
            width: 250, // Adjust the width as needed
            height: 150, // Adjust the height as needed
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.5), // Dashed border if needed
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add, color: Colors.grey, size: 40,),
                SizedBox(height: 8), // Space between icon and text
                Text(
                  'ADD NEW\nADDRESS',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16, // Adjust font size as needed
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('No Orders Placed!',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
        const SizedBox(height: 16),
        SizedBox(
          width: screenWidth/3,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow[500],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              minimumSize: Size(0, 50),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
            child: const Text(
              "START SHOPPING",
              style: TextStyle(color:Colors.black87,fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}

class MyWallets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.black87,width: 0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          color: Color(0xfffffae7),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9, // 90% of screen width
            height: MediaQuery.of(context).size.height * 0.35, // 30% of screen height
            padding: const EdgeInsets.all(25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Oh no! Looks like your wallet is empty :(',style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),),
                Image.network('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAQEhIQEBASEBAWEhAPEA8QEBYPExUPFRUWFhcRFRYYHikgGBwlGxcWITEhJSktLi4uFx8zRDMsNygtLisBCgoKDg0OGhAQGjImICU2LiswLi43Lys3Ky8tNS0rKzUvLTArLTUtLS0tLS0tLS4tLy0tLS0tLS0rLS0tLS0tLf/AABEIAOEA4QMBEQACEQEDEQH/xAAbAAEAAwEBAQEAAAAAAAAAAAAAAwQFBgIBB//EADgQAAIBAgEJCAEDAwQDAAAAAAABAgMRIQQFEjEyQVJxsQYTIlFhcpGSgSNioTNCwYKi4fAUQ9H/xAAbAQEAAgMBAQAAAAAAAAAAAAAAAwUBBAYCB//EADQRAQACAQIDBQcDBAIDAAAAAAABAgMEEQUhURIiMUFxBjJhgZHR8BMz4TShscEj8RRSgv/aAAwDAQACEQMRAD8A/aqNGOjHwx2VuXkB77mPDH6oB3MeGPwgHcx4Y/VAO5jwx+qAdzHhj8IB3MeGP1QDuY8MfqgHcx4Y/CAdzHhj9UA7mPDH6oB3MeGPwgHcx4Y/VAO5jwx+qAdzHhj8IB3MeGP1QDuY8MfqgHcx4Y/VAO5jwx+qAdzHhj9UA7mPDH6oB3MeGP1QDuY8MfqgHcx4Y/VAO5jwx+EA7mPDH6oB3MeGP1QDuY8MfhAY3dR8l8IDZobMfbHoBIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYwGrQ2Y+2PQCQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAxgNWhsx9segEgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABjAatDZj7Y9AJAAAAAAAAAAAAAAAAAAAA+OSWt2MTMR4kRuJmYncfQAAAAAAAAGMBq0NmPtj0AkAAAAAAAAAAAAAAAAAAGJnftJRoXin3lThi8E/VlTq+L4sW9ad639o+f2bmDR2yc55Q4rOmeq2UP8AUnaO6Cdo/wDJzubPn1U723nbyjwhZVjBp9qzMRM8o38Zl0XYPKpPvabk3GOhKKbva900vhFzwTJfvUt4Rt8mnr617t6+bq3Wino6UdLdG6v8F3OXHFuzNo36bq/sztvs9kjyAAAAAAAxgNWhsx9segEgAAAAAAAAAAAAAAACjnLO1HJ1epLHdFYyf4NLVa/Dp+Vp59I8U2LT3yzyhxed+01WteMH3VPyTxa9Wc3qeIZ9TPZjlHSPP1WuPTYtPXt3nw85ctlOXpbPifFuvz38jY03Cpnnl5R0c9xH2mpXemljef8A2nw+Uefz5KMdOrNRipVKm6KWr18o83jyLe1sOlpz2iPz6uWiuq1+Xztbr+eEfSHX9mc3Vslcqs6ujJwcHCOzGLak3d/3Ya/VnOavjlpma6au2/n5y6/hnB//ABoictt56eUfnwbEJJ+JPSvjpJ6V/W+8569rzeZvM7/Fe8vB1eQTcqcG9birv1PpPDslsmlx3t4zCmyxEXmITm6jAAAAAAxgNWhsx9segEgAAAAAAAAAAAAAIcqymFKOlUkox82RZs+PDXtZJ2h7pjtedqw5HO/a2UrxydaK1d5LX+FuOc1fGL33rh5R18/4/wArTBoIjnfm4/LcuxblJzm8bXu+b8jW03D8ufvW5R1nxlo6/j2m0kdjH3rdI8I9Z/1HNl5RlUp4Pfgoxxv6YYy6epfYdLi09d4j5y4rV6/U6/Jted+lY8I+X33lqZs7N1atpVb0oboq2m10ivRFTreO48fdwc56+X8rjQeztrd7Uco6efz/ADd02RZPRo/pUoWeuVle2GuUvN/JzWfLmz/8uS358IdXhwY8NexjrtCeFByVqrjUu09HRWirakk8Xzf8EVskRMfp8v8AKbZ6nDxwkpWwlFx4tTTS81Z/LEW3paNuk7/nUdXmz+lDkfQuEf0WP0U+f9yy0WKIAAAAADGA1aGzH2x6ASAAAAAAAAAAAD5KSWLdlvbwMWtFY3nwZiJnlDm88dq6dO8aP6kuL+1f/Si1fGa13rhjf4+Xy6t/BoLW535Q4rOmdZ1Hp1p38l/hIqKYc+rv2p5/Gfz/AAl1fENLw+u1p59I8Z/OssXKcvlK9vBHfjj+eHr6F3peHYsPetzlxPEePanV9yvdr0jz9Z8/ltCXNuZ62UYxjoU9bqTWv1injLmzxreK4NN3d97dIedBwPPqdrW7tev2j8h1Wbs00cm2U51dFycpWlUkl5X1HK6rX6jVz352r/Z2Wj4fg0ldsdefWfFddN1IrTvTxbcIz1rcnJK6/D/LNSLVx27vP4z+f5buycgegCKpo6VO7eleWj5X0Xe/4Jadrs22+G7Dq81yTpQx1Kz5n0Hg1620ePszvtG0qjPExklbLNCAAAAABjAatDZj7Y9AJAAAAAAAAAADIztn+jQur6c+CL6vcVer4riwd2vet0j/AHLawaS+X4Q4rPGfate+nLQhugsFb18znsufUay208/hHh+eqxt/42ip28kxEdZ/P8OdyjOG6C/1NdFv56iy03CYjvZefwclxD2myX3ppo7MdZ8f4/vKtkuTVa8rUoub1ObfhXOX+F/JvajV4NLXvTt8P4Uml0Op1tpmsesz9/z0dLm/s9RopVMokpyXFhTi/KMfM5jV8Yz6iexi5R8PGfm7DQ8E0+m71u9b4/b7ttSk9FwtGGt6UWpW4VF20eb+Co2pG/b5yunuFKMW2kk5O8nvb9WeLXtaIiZ5Qy9ngAAFXK8pjCULx0peKyjjJYeXrqJ8WO1q257QbbtPs9Wqxk9PBTlhC92k9V/z1LThGs/Q1daV8Lcp9fKWrqqVtXePJ1B3yrAAAAAAxgNWhsx9segEgAAAAAAAFbL8thQg6lR2ivlvyRr6nU49PTt3/wC0mLFbJbs1cTnjtTVq3jT/AE4f7nze45jVcSzaju15R0jxn1lbYtJjxR2r+XXwhyuU5ele3ilvxwXNkmm4Va/PJyjp5/wo+Ie02PF3NP3p6+Xy6/4+LOnUnUkopOc3qhFX/Nt3OXwXMRh0tPKsOStfVcQy85m0/n0j0+rfzb2XbtLKXhr7qLw/1y1s5/W8emZ7Gn+s/wCnSaD2drTa+oneekOjoRUGqdOlaCWMklGCwwS4nyOfvNrxN725/X/p01KVpHZrG0PdGk43vKU28W5auSSwSPF8m+20bbPUQkI2QAB5qTUU5SdktbZmImZ2gVYyq1tj9Onxyxk1+1f5JpimP3uc9GeULeS5JCnqV29c3jJ82QXy2v4vE2mV7Iv6kPcja4X/AFmL1hBm9yXSH09VAAAAAAYwGrQ2Y+2PQCQAAAAAAADm+2ji40qbdnJykl6Rtd/LXyc/7QbxipPx/wBLLhvvWcLl+a60rKFmr+K0tHCzt/gq+G63TYpm2XlPk0vaDR6vVRSmD3ee8b7c/L1+6PJOzFaWj3klTjbFRxlfyjuS9dZtanj+KtdsUbz8VLpfZrJNt9RO0dI5zP583RZDklChenRitNK8le7b3aUt1/U57UZ8+eYyZp5fnhDqtPpsWnr2cUbLDoacUqqi8b6MW9Hk+L84ehr/AKnYmf0/r5/w2E5CAZAAAClUh31Xu/8A1wSlNecnqX/fU2Kz+nj7XnLO/Zjdk527WOnN06EIyjF6MpSvZta1G2pepa6Tgv6mPt5ZmJnw/lr2s6ejU0oxla14qVvK6vYoMlOxaa9HtayL+pD3I3eFRM6zFt1hHm9yXRn05UgAAAAAYwGrQ2Y+2PQCQAAAAAAADnO2avCnZ2elKzwbWGvE5/2gnbFT1WfDI71vRg0O8UcNCcr726at/uxOQt+nNue8R9fssMm63KE5aPi0UrOUY43flpPd+LkUWpWJ5b9N/sh2lKklqVsW8MMXrZHMzPiBhkAAAAACrm+DartbbqTSfqlh1J8kxFqb+HIyeTks09m61SolVhKnTT8blg3+2Pnfz1HTariuDHi/47bzPht5NaK83ducY2V0m8Irzsr4HIRWbbylbmaslioqprk1v3cjuuB8Nw48VdR42mPp6K7UZbTaa+TROhawAAAAAGMBq0NmPtj0AkAAAAAD5KSWLwAq1cq3R+QOf7SO6pv9z6HO+0X7VPWVpwv37ejPyc4y6xutEaAAAAAAAAA+UYKLk1/dZtfuta/xb4M2mbREdGLc0jmeIqxsr1XHTp3vpXlotar6Lvf8E1InsW28OW/1Z5OszZ/ShyPonCf6LH6KfN+5K0WKIAAAAADGA1aGzH2x6ASAAAACvVylLBYv+AKs5uWtgeAMjtHs0/c+hzvtF+1T1lacL9+3ooZMcZdY3WmRoAAAAAAAAAAAiqS8UFa93LHhtF9dRJSO7ad+nzeZdZmz+lDkfROE/wBFj9FRn/cstFiiAAAAAAxgNWhsx9segEgACKrXjH1fkgKlSu5ei8kBEAAAZHaPZp+59DnfaL9qnrK04X79vRQyY4y6xutMjQAAAAAAAAAABHPS0oW2fFp/GH8klez2bb+PkxLrM2/0ocj6Jwn+ixeinz/uSsliiAAAAAAxgNWhsx9segHqc0sWwKlbKW8Fgv5ArgAAAABkdo9mn7n0Od9ov2qesrThfv29FDJjjLrG60yNAAAAAAAAAAPM5qKcpNRSxbbskvNs9VrNp2iGHnJqTnLTTb0lCMI2cbLXdp723/CJ4pa81w1jvb/WXmZ7MTMuxyenoxjHySR9J02GMOGuOPKNlNe3atMpCd5AAAAAAxgLrruMYpa9GOP4ArybeLxYHwAAAAAAGR2j2afufQ532i/ap6ytOF+/b0UMmOMusbrTI0AAAAAAAABH33i0FGTetyt4V5Xb1v0VyT9Pu9uZ+7G6TIc31KmD/UxTbcVGEWtWiserZu6bSZtTaI09do6/efsjyZa4/F0eQ5tjT8TelLz3Lkdfw7g2LST25ne/Xp6K7NqLZOXkvFy1wAAAAAAGMBpQpKUY34Vjv1AQVcna1YoCAAAAAAAGR2j2afufQ532i/ap6ytOF+/b0UMmOMusbrTI0AAAAAAHidVK6Ximo6WgmtJr8vqe4xzO0zyjqw8wyWVZKMou923ThJtNblJ4XXnu5mxhre2Ts4I7U+n5s82tFY3s3skzRbGpj+1avyzpNB7OxHf1M7/CP9y0curmeVPq1YQUVZKy3JYHT0x1x1itY2hpzMzzl7PbAAAAAAAABjAatDZjyXQCQCGrQUvR+YFSpScderzAjAAAAGR2j2afufQ532i/ap6ytOF+/b0UMmOMusbrTI0AAAAeKtWMFpSdl847kktb9D1Sk3narDz45aLi9CODknHxv9tnguvIkrFY3iY3ny28P5YamQZlbu2u7Tek7K0pPzf/ACXui4Hn1G1s89mvTz/hq5dXWvKvNuZPk8YK0VZfy+bOt02kxaavZxV2aF72vzlMbLwAAAAAAAAAAGMBq0NmPJdAJAACwFarkqeMcPTcBVnFrB4AeQAGR2j2afufQ532i/ap6ytOF+/b0UMmOMusbrTI0AB8bti8EsW3gkvMzETM7QPHeS0rKHh1ubaS5RWtv4Xqe4rWK7zPPoxutZtzVOWN5O+Mqk3r5JYfCSLTScM1Gs2msdmvX85ygyailOXm6DJMghT1K8uJ6/x5HXaHhOn0kb1je3Wfzkr8me+T0WyzQgAAAAAAAAAAAAYwGrQ2Y8l0AkAAAAHmcE8GrgVauStbOK8t4FdgYvaSov0o725tcklfqjnvaKP+Kk/FZ8M9+3opZOcXdZXWmRoESrpuUYNSmk7rHRT3RlJJpP01+hJ+lMRFrcon88GN0mT5vnWspxjUaelgmoJ7tbxt6m5pdPmz37Omiem/T1nyeL5K0jezoMjzVGOM/HLy/tX43nU6HgGHDtbL3rf2j7q/LqrW5V5Q0Ui/jlyar6ZAAAAAAAAAAAAAAGMBq0NmPJdAJAAAAAAAR1KSlr+QOf7TZBNwTjdpNtuKxSatexSccxXvhrasb7TzhYcOvWt5iZ8WFk6qJJKUZSvrkmsPxvOLtOOZ5xMR8Fnk3Xf/AB5zcfFK6teNPDSlz129DziibWmmOvamfDzQWmIjeW1kWZ99Tnor/LOk0Ps9M7X1M/8AzH+5+zRy6vyp9WvTpqKskkvJHU4sVMVYrSNoaVrTM7y9kjAAAAAAAAAAAAAAAAAxgNWhsx5LoBIAAAAAAAB8aArzyCk3d04389FI08mg02Sd7Y4+iWM2SPC0paVCMdmKjyViXDpsWH9usR6Q8Wva3jKQneQAAAAAAAAAAAAAAAAAAYwGrQ2Y8l0AkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAMYDVobMeS6ASAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGMBq0NmPJdAJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADGA1aGzH2roBIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAYwEdPUuSA+gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAPoGaB//9k=',height: 110,),
                Text('Start earning credits now!',style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold,fontSize: 16),),
              ],
            ),
          ),
        ),
        SizedBox(height: 50,),
        Text('Invite your friends to shop on Bewakoof and',style: TextStyle(color: Colors.grey,fontSize: 20),),
        Text('win credits worth ₹125 on every referral',style: TextStyle(color: Colors.black87,fontSize: 20,fontWeight: FontWeight.bold),),
        SizedBox(height: 50,),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Share via',style: TextStyle(color: Colors.black87,fontSize: 18),),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    InkWell(onTap:(){},child: Icon(Icons.dangerous,size: 35,)),
                    Text('X'),
                  ],
                ),
                Column(
                  children: [
                    InkWell(onTap:(){},child: Icon(Icons.facebook,size: 35,color: Colors.blue[800],)),
                    Text('Facebook'),
                  ],
                ),
                Column(
                  children: [
                    InkWell(onTap:(){},child: Icon(Icons.link,size: 35,color: Colors.blue,)),
                    Text('Copy Link'),
                  ],
                )
              ],
            )

          ],
        )
      ],
    );
  }
}
