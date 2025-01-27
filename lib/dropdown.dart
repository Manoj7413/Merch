import 'package:flutter/material.dart';

class ProfileDropdownMenu extends StatefulWidget {
  @override
  _ProfileDropdownMenuState createState() => _ProfileDropdownMenuState();
}

class _ProfileDropdownMenuState extends State<ProfileDropdownMenu> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Menu Example'),
      ),
      body: Center(
        child: MouseRegion(
          onEnter: (_) => setState(() => _isHovered = true),
          onExit: (_) => setState(() => _isHovered = false),
          child: Container(
            child: Column(
              children: [
                IconButton(
                  icon: Icon(Icons.account_circle, size: 40),
                  onPressed: () {}, // Optionally handle button press
                ),
                if (_isHovered)
                  Positioned(
                    top: 50,
                    left: 50,
                    child: Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        width: 200,
                        height: 500,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _buildMenuItem('Profile', Icons.person),
                            _buildMenuItem('My Orders', Icons.shopping_cart),
                            _buildMenuItem('Help', Icons.help),
                            _buildMenuItem('My Wallet', Icons.account_balance_wallet),
                            _buildMenuItem('Settings', Icons.settings),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(String text, IconData icon) {
    return InkWell(
      onTap: () {
        print('$text clicked');
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        child: Row(
          children: [
            Icon(icon, size: 20, color: Colors.black87),
            SizedBox(width: 10),
            Text(
              text,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}