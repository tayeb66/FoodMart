import 'package:flutter/material.dart';
import 'package:food_mart/Constant/constant.dart';

class SingleItem extends StatelessWidget {
  bool isBool = false;

  SingleItem({Key? key, required this.isBool}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: Container(
              height: 100,
              // color: Colors.blue,
              child: Center(
                child: Image.network(
                    'https://thumbs.dreamstime.com/b/fresh-green-basil-'
                    'leaves-closeup-perfect-fresh-basil-leaves-i'
                    'solated-white-background-shadows-png-file-21'
                    '0754810.jpg'),
              ),
            )),
            Expanded(
                child: Container(
              height: 100,
              // color: Colors.deepOrange,
              child: Column(
                mainAxisAlignment: isBool == false
                    ? MainAxisAlignment.spaceAround
                    : MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        'ProductName',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: textColor),
                      ),
                      Text(
                        '\$50/50gram',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  isBool == false
                      ? Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          height: 35,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text('50gram'),
                              )),
                              Expanded(
                                  child: Container(
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  color: primaryColor,
                                ),
                              ))
                            ],
                          ),
                        )
                      : Text('50 gram'),
                ],
              ),
            )),
            Expanded(
              child: isBool == false
                  ? Container(
                      padding: isBool == false
                          ? EdgeInsets.symmetric(horizontal: 12.0)
                          : EdgeInsets.only(left: 15, right: 15),
                      height: 40,
                      width: 50,
                      decoration: BoxDecoration(
                        //color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.add),
                          Text(
                            'Add',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    )
                  : Column(
                      children: [
                        Icon(
                          Icons.delete,
                          size: 30,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          padding: isBool == false
                              ? EdgeInsets.symmetric(horizontal: 12.0)
                              : EdgeInsets.only(left: 15, right: 12),
                          height: 40,
                          width: 80,
                          decoration: BoxDecoration(
                            //color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.add),
                              Text(
                                'Add',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
        isBool == false
            ? Container()
            : Divider(
          thickness: 1,
          color: Colors.black54,
        ),
      ],
    );
  }
}
