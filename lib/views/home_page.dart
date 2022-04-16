import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget singleProduct(){
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      height: 230,
      width: 160,
      decoration: BoxDecoration(
        color: Colors.white70,
        borderRadius: BorderRadius.all(Radius.circular(6.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 2,
              child: Image.network(

                  'https://atlas-content-cdn.pixelsquid.com/stock-image'
                      's/fresh-basil-leafs-mr3mzw4-600.jpg',
                height: 230,
                width: 160,
                fit: BoxFit.cover,
                )),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Fresh basil',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text(
                      '\$50/50 gram',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 30,
                                width: 50,
                                decoration: BoxDecoration(
                                  //color: Colors.black,
                                    borderRadius:
                                    BorderRadius.circular(10),
                                    border: Border.all(
                                      color: Colors.grey,
                                    )),
                                child: Row(
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                          margin: EdgeInsets.only(
                                              left: 2),
                                          child: Text(
                                            '50 Gram',
                                            style: TextStyle(
                                                fontSize: 10),
                                          ),
                                        )),
                                    Expanded(
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          size: 20,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Expanded(
                                child: Container(
                                  height: 30,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      borderRadius:
                                      BorderRadius.circular(8),
                                      border:
                                      Border.all(color: Colors.grey)),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Icon(
                                            Icons.remove,
                                            size: 20,
                                            color: Colors.green,
                                          )),
                                      Expanded(
                                          child: Text(
                                            '1',
                                            style: TextStyle(
                                              color: Colors.green,
                                            ),
                                          )),
                                      Expanded(
                                          child: Icon(
                                            Icons.add,
                                            size: 20,
                                            color: Colors.green,
                                          )),
                                    ],
                                  ),
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xF5F1F1FF),
        drawer: Drawer(),
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
                          child: Container(
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
                            ),
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                     singleProduct(),
                     singleProduct(),
                     singleProduct(),
                     singleProduct(),
                     singleProduct(),
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      singleProduct(),
                      singleProduct(),
                      singleProduct(),
                      singleProduct(),
                      singleProduct(),
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      singleProduct(),
                      singleProduct(),
                      singleProduct(),
                      singleProduct(),
                      singleProduct(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
