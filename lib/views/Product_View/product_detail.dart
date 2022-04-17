import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_mart/Constant/constant.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  Widget bottomNavigationBar(Color iconColor, Color bgColor, Color textColor,
      String title, IconData iconData) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.all(20),
      color: bgColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 20,
            color: iconColor,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigationBar(Colors.grey, Colors.black54, Colors.white,
              'Add to wish list', Icons.favorite_outlined),
          bottomNavigationBar(Colors.grey, Colors.orange, Colors.white,
              'Go to cart', Icons.shop_outlined),
        ],
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: textColor,
        ),
        title: Text(
          'Product Detail',
          style: TextStyle(color: textColor),
        ),
      ),

    );
  }
}
