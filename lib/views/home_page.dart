import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_mart/views/Product_View/product_detail.dart';
import 'package:food_mart/views/drawer_page.dart';
import 'package:food_mart/views/single_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xF5F1F1FF),
        /// Drawer
        drawer: MyDrawer(),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.green,
          title: Text(
            'HomePage',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            CircleAvatar(
              backgroundColor: Color(0xFFA5D6A7),
              radius: 15.0,
              child: Icon(
                Icons.search,
                size: 20,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: CircleAvatar(
                backgroundColor: Color(0xFFA5D6A7),
                radius: 15.0,
                child: Icon(
                  Icons.shop,
                  size: 20,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                /// Carousel Image, logo
                Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://media.istockphoto.com/photos/vegan-raw-vegetables-on-green-wooden-table-background-picture-id1318478175?b=1&k=20&m=1318478175&s=170667a&w=0&h=EDYUhDAEqIabRL7ybjbx_ArX1EgMELyoNcb9P01d-CY='),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(8.0)),
                  height: 150,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 120),
                                child: Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      color: Color(0xFF81C784),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(50),
                                      )),
                                  child: Center(
                                    child: Text(
                                      'Vegi',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          shadows: [
                                            BoxShadow(
                                                color: Colors.green,
                                                offset: Offset(3, 3),
                                                blurRadius: 3.0)
                                          ]),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '30% off',
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Color(0xFFE8F5E9),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'On all vegitables product',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )),
                      Expanded(child: Container()),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Herbs seasoning',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),

                /// Single Product
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      /// Data show from SingleProduct Class
                      SingleProduct(
                          productImage:
                              'https://thumbs.dreamstime.com/b/fresh-green-basil-leaves-closeup-perfect-fresh-basil-leaves-isolated-white-background-shadows-png-file-210754810.jpg',
                          productName: 'Fresh basil',
                          onTap: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => ProductDetail()));
                          }),
                      SingleProduct(
                          productImage:
                              'https://media.istockphoto.com/photos/fresh-leaf-mint-green-herbs-ingredient-picture-id1131562141?b=1&k=20&m=1131562141&s=170667a&w=0&h=GdY9vC8NqHqKMCCSI_AzerfcktU5N0x1WzyvRT2wqEE=',
                          productName: 'Fresh mint',
                          onTap: () {}),
                      SingleProduct(
                          productImage:
                              'https://thumbs.dreamstime.com/b/fresh-green-basil-leaves-closeup-perfect-fresh-basil-leaves-isolated-white-background-shadows-png-file-210754810.jpg',
                          productName: 'Fresh basil',
                          onTap: () {}),
                      SingleProduct(
                          productImage:
                              'https://media.istockphoto.com/photos/fresh-leaf-mint-green-herbs-ingredient-picture-id1131562141?b=1&k=20&m=1131562141&s=170667a&w=0&h=GdY9vC8NqHqKMCCSI_AzerfcktU5N0x1WzyvRT2wqEE=',
                          productName: 'Fresh mint',
                          onTap: () {}),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Fresh fruits',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      /// Data show from SingleProduct Class
                      SingleProduct(
                          productImage:
                              'https://www.kindpng.com/picc/m/191-1916444_download-berries-png-pic-mixed-berries-png-transparent.png',
                          productName: 'Fresh Berries',
                          onTap: () {
                          }),
                      SingleProduct(
                          productImage:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiYE8TB_MqtYOK3zH7YgvQp8W2NWf_6VsDTA&usqp=CAU',
                          productName: 'Fresh watermelon',
                          onTap: () {}),
                      SingleProduct(
                          productImage:
                              'https://www.kindpng.com/picc/m/191-1916444_download-berries-png-pic-mixed-berries-png-transparent.png',
                          productName: 'Fresh Berries',
                          onTap: () {}),
                      SingleProduct(
                          productImage:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTB6nzTwfU1r9BwWCKe015gs515nRyp2alv5w&usqp=CAU',
                          productName: 'Fresh Grapes',
                          onTap: () {}),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Fresh fruits',
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      /// Data show from SingleProduct Class
                      SingleProduct(
                          productImage:
                              'https://www.kindpng.com/picc/m/192-1921614_mango-pulp-and-juice-transparent-mango-fruit-png.png',
                          productName: 'Fresh mango',
                          onTap: () {}),
                      SingleProduct(
                          productImage:
                              'https://5.imimg.com/data5/IP/BO/MY-40565349/litchi-fruit-500x500.jpg',
                          productName: 'Fresh lychee',
                          onTap: () {}),
                      SingleProduct(
                          productImage:
                              'https://www.kindpng.com/picc/m/206-2064665_apple-green-apple-red-apple-fresh-apple-fresh.png',
                          productName: 'Fresh apple',
                          onTap: () {}),
                      SingleProduct(
                          productImage:'https://www.kindpng.com/picc/m/5-52713_transparent-orange-juice-png-orange-juice-png-png.png',
                          productName: 'Fresh orange',
                          onTap: () {}),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
