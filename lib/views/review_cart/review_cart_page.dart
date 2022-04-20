import 'package:flutter/material.dart';
import 'package:food_mart/Constant/constant.dart';
import 'package:food_mart/Widgets/single_item.dart';

class ReviewCartPage extends StatefulWidget {
  const ReviewCartPage({Key? key}) : super(key: key);

  @override
  State<ReviewCartPage> createState() => _ReviewCartPageState();
}

class _ReviewCartPageState extends State<ReviewCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text(
          'Total price',
          textScaleFactor: 1.2,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Text(
          '\$160.00',
          textScaleFactor: 1.2,
        ),
        trailing: Container(
          height: 45,
          width: 160,
          child: MaterialButton(
            onPressed: () {},
            child: Text(
              'Submit',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            color: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text('ReviewCartPage'),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          SingleItem(
            isBool: true,
          ),
          SingleItem(
            isBool: true,
          ),
          SingleItem(
            isBool: true,
          ),
          SingleItem(
            isBool: true,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
