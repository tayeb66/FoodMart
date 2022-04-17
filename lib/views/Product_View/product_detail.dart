import 'package:flutter/material.dart';
import 'package:food_mart/Constant/constant.dart';

enum SingleCharacter { fill, outline }

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  SingleCharacter character = SingleCharacter.fill;

  /// this method using bottomNavigationBar
  Widget bottomNavigationBar(Color iconColor, Color bgColor, Color textColor,
      String title, IconData iconData) {
    return Expanded(
      flex: 1,
        child: Container(
      padding: EdgeInsets.all(17),
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
      backgroundColor: bgColor,
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
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'Fresh basil',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textScaleFactor: 1.2,
                    ),
                    subtitle: Text(
                      '\$50',
                      textScaleFactor: 1.1,
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    height: 300,
                    padding: EdgeInsets.all(40),
                    child: Image.network(
                        'https://thumbs.dreamstime.com/b/fresh-green-basil-leaves-closeup-perfect-fresh-basil-leaves-isolated-white-background-shadows-png-file-210754810.jpg'),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: double.infinity,
                    child: Text(
                      'Available options',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, color: textColor),
                      textScaleFactor: 1.1,
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          radius: 3,
                          backgroundColor: Colors.green[700],
                        ),
                        Radio(
                          value: SingleCharacter.fill,
                          groupValue: character,
                          activeColor: Colors.green[700],
                          onChanged: (value) {
                            setState(() {
                              value = character;
                            });
                          },
                        ),
                        Text('\$50'),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.add,
                                size: 17,
                                color: Colors.blue,
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                'Add',
                                style: TextStyle(fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding:
                  EdgeInsets.all(20),
              width: double.infinity,
              child: ListView(
                children: [
                  Text(
                    "About This Product",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "of a customer. Wikipedi In marketing, a product is an object or system made available for consumer use; it is anything that can be offered to a market to satisfy the desire or need of a customer. Wikipedi",
                    style: TextStyle(
                      fontSize: 16,
                      color: textColor,
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
}
