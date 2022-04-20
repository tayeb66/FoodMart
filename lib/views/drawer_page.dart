import 'package:flutter/material.dart';
import 'package:food_mart/Constant/constant.dart';
import 'package:food_mart/views/Profile/my_profile_page.dart';
import 'package:food_mart/views/home_page.dart';
import 'package:food_mart/views/review_cart/review_cart_page.dart';

class MyDrawer extends StatelessWidget {
  /// This method use Repeatedly for lisTile widget
  // Widget lisTile(IconData icon, String title,VoidCallback onTap) {
  //   return ListTile(
  //     onTap: onTap,
  //     leading: Icon(
  //       icon,
  //       size: 32,
  //     ),
  //     title: Text(
  //       title,
  //       style: TextStyle(color: Colors.black54),
  //     ),
  //   );
  // }
  Widget listTile(
      {required String title,
      required IconData iconData,
      required Function()? onTap}) {
    return Container(
      height: 50,
      child: ListTile(
        onTap: onTap,
        leading: Icon(
          iconData,
          size: 28,
        ),
        title: Text(
          title,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }

  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              child: Row(
            children: [
              CircleAvatar(
                radius: 35.0,
                backgroundColor: Colors.deepOrange,
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Welcome guest',
                    textScaleFactor: 1.2,
                  ),
                  Container(
                    height: 30,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white70),
                      ),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        //side: BorderSide(width: 1.0),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
          // lisTile(Icons.home, 'home',),
          // lisTile(Icons.shop_outlined, 'Review cart'),
          // lisTile(Icons.person_outlined, 'Profile'),
          // lisTile(Icons.notifications_outlined, 'Notification'),
          // lisTile(Icons.star_outlined, 'Rating & Review'),
          // lisTile(Icons.favorite_outlined, 'Wishlist'),
          // lisTile(Icons.copy_outlined, 'Raise a complain'),
          // lisTile(Icons.format_quote_outlined, 'FAQS'),
          listTile(
              title: 'home',
              iconData: Icons.home,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              }),
          listTile(
              title: 'Review cart',
              iconData: Icons.shop_outlined,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ReviewCartPage()));
              }),
          listTile(
              title: 'Profile',
              iconData: Icons.person_outlined,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyProfilePage()));
              }),
          listTile(
              title: 'Notification',
              iconData: Icons.notifications_outlined,
              onTap: () {}),
          listTile(
              title: 'Rating & Review',
              iconData: Icons.star_outlined,
              onTap: () {}),
          listTile(
              title: 'Wishlist',
              iconData: Icons.favorite_outlined,
              onTap: () {}),
          listTile(
              title: 'Raise a complain',
              iconData: Icons.copy_outlined,
              onTap: () {}),
          listTile(
              title: 'FAQS',
              iconData: Icons.format_quote_outlined,
              onTap: () {}),

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Contact us',
                  textScaleFactor: 1.2,
                  style: TextStyle(color: textColor),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Call us: +008-1776670606',
                  textScaleFactor: 1.2,
                  style: TextStyle(color: textColor),
                ),
                Text(
                  'Email us: someone@email.com',
                  textScaleFactor: 1.2,
                  style: TextStyle(color: textColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
