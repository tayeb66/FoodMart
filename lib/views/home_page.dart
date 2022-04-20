import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_mart/Constant/constant.dart';
import 'package:food_mart/Provider/product_provider.dart';
import 'package:food_mart/views/Product_View/product_detail.dart';
import 'package:food_mart/views/drawer_page.dart';
import 'package:food_mart/views/single_product.dart';
import 'package:provider/provider.dart';
import 'Search_Product/search_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ProductProvider productProvider = ProductProvider();

  /// Initialize the class for one time.
  /// That's why use listen: false
  @override
  void initState() {
    ProductProvider productProvider = Provider.of(context, listen: false);
    productProvider.fetchHerbsProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    productProvider = Provider.of(context);
    return Scaffold(
        backgroundColor: bgColor,

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
              child: IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchPage()));
                },
                iconSize: 20,
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
                    children: productProvider.getHerbsProductList.map((herbsProduct) {
                      return SingleProduct(
                        productPrice: herbsProduct.productPrice,
                          productImage: herbsProduct.productImage,
                          productName: herbsProduct.productName,
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetail(
                                      productPrice: herbsProduct.productPrice,
                                          productName: herbsProduct.productName,
                                          productImage: herbsProduct.productImage,
                                        )));
                          });
                    }).toList(),
                    // children: [
                    //   /// Data show from SingleProduct Class
                    //   // SingleProduct(
                    //   //     productImage:
                    //   //         freshBasil,
                    //   //     productName: 'Fresh basil',
                    //   //     onTap: () {
                    //   //       Navigator.push(
                    //   //           context,
                    //   //           MaterialPageRoute(
                    //   //               builder: (context) => ProductDetail(
                    //   //                     productName: 'Fresh basil',
                    //   //                     productImage:
                    //   //                         freshBasil,
                    //   //                   )));
                    //   //     }),
                    //   // SingleProduct(
                    //   //     productImage:
                    //   //         freshMint,
                    //   //     productName: 'Fresh mint',
                    //   //     onTap: () {
                    //   //       Navigator.push(
                    //   //           context,
                    //   //           MaterialPageRoute(
                    //   //               builder: (context) => ProductDetail(
                    //   //                   productName: 'Fresh Mint',
                    //   //                   productImage:
                    //   //                     freshMint)));
                    //   //     }),
                    //   // SingleProduct(
                    //   //     productImage:
                    //   //         freshBasil,
                    //   //     productName: 'Fresh basil',
                    //   //     onTap: () {
                    //   //       Navigator.push(
                    //   //           context,
                    //   //           MaterialPageRoute(
                    //   //               builder: (context) => ProductDetail(
                    //   //                     productName: 'Fresh basil',
                    //   //                     productImage:
                    //   //                         freshBasil,
                    //   //                   )));
                    //   //     }),
                    //   // SingleProduct(
                    //   //     productImage:freshMint,
                    //   //     productName: 'Fresh mint',
                    //   //     onTap: () {
                    //   //       Navigator.push(
                    //   //           context,
                    //   //           MaterialPageRoute(
                    //   //               builder: (context) => ProductDetail(
                    //   //                   productName: 'Fresh Mint',
                    //   //                   productImage: freshMint,
                    //   //               )));
                    //   //     }),
                    // ],
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
                        productPrice: 1,
                          productImage: freshBerries,
                          productName: 'Fresh Berries',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetail(
                                          productName: 'Fresh Berries',
                                          productImage: freshBerries, productPrice: 1,
                                        )));
                          }),
                      SingleProduct(
                          productPrice: 1,
                          productImage: freshWaterMelon,
                          productName: 'Fresh watermelon',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetail(
                                          productImage: freshWaterMelon,
                                          productName: 'Fresh watermelon', productPrice: 1,
                                        )));
                          }),
                      SingleProduct(
                          productPrice: 1,
                          productImage: freshBerries,
                          productName: 'Fresh Berries',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetail(
                                          productImage: freshBerries,
                                          productName: 'Fresh Berries', productPrice: 1,
                                        )));
                          }),
                      SingleProduct(
                          productPrice: 1,
                          productImage: freshGrapes,
                          productName: 'Fresh Grapes',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetail(
                                          productImage: freshGrapes,
                                          productName: 'Fresh Grapes', productPrice: 1,
                                        )));
                          }),
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
                          productPrice: 1,
                          productImage: freshMango,
                          productName: 'Fresh mango',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetail(
                                          productImage: freshMango,
                                          productName: 'Fresh mango', productPrice: 1,
                                        )));
                          }),
                      SingleProduct(
                          productPrice: 1,
                          productImage:
                              'https://5.imimg.com/data5/IP/BO/MY-40565349/litchi-fruit-500x500.jpg',
                          productName: 'Fresh lychee',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetail(
                                          productImage: freshLychee,
                                          productName: 'Fresh lychee', productPrice: 1,
                                        )));
                          }),
                      SingleProduct(
                          productPrice: 1,
                          productImage: freshApple,
                          productName: 'Fresh apple',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetail(
                                        productImage: freshApple,
                                        productName: 'Fresh apple', productPrice: 1,)));
                          }),
                      SingleProduct(
                          productPrice: 1,
                          productImage: freshOrange,
                          productName: 'Fresh orange',
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProductDetail(
                                        productImage:
                                            'https://www.kindpng.com/picc/m/5-52713_transparent-orange-juice-png-orange-juice-png-png.png',
                                        productName: 'Fresh orange', productPrice: 1,)));
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
