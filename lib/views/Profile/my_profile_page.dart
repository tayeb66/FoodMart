import 'package:flutter/material.dart';
import 'package:food_mart/Constant/constant.dart';
import 'package:food_mart/views/drawer_page.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({Key? key}) : super(key: key);

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  Widget lisTile({
    required IconData iconData,
    required String title,
  }) {
    return Column(
      children: [
        Divider(
          thickness: 1,
          color: Colors.grey,
        ),
        ListTile(
          leading: Icon(iconData),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          'Profile',
          style: TextStyle(color: textColor),
        ),
        elevation: 0.0,
        backgroundColor: primaryColor,
      ),
      drawer: MyDrawer(),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 100,
                color: primaryColor,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  child: ListView(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 280,
                            height: 80,
                            //color: Colors.blue,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Tayeb ahmed',
                                      textScaleFactor: 1.2,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text('tayebahmed@gmail.com')
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 60),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: Colors.orangeAccent,
                                    child: CircleAvatar(
                                      radius: 17,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        Icons.edit,
                                        color: primaryColor,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      lisTile(iconData: Icons.shop_outlined, title: 'My order'),
                      lisTile(iconData: Icons.location_on_outlined, title: 'My delivery address'),
                      lisTile(iconData: Icons.person_outlined, title: 'Refer a friend'),
                      lisTile(iconData: Icons.file_copy_outlined, title: 'terms & condition'),
                      lisTile(iconData: Icons.policy_outlined, title: 'Privacy policy'),
                      lisTile(iconData: Icons.add_chart, title: 'about'),
                      lisTile(iconData: Icons.logout, title: 'logout'),
                    ],
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(40),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: primaryColor,
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
