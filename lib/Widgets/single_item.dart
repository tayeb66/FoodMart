import 'package:flutter/material.dart';
import 'package:food_mart/Constant/constant.dart';

class SingleItem extends StatefulWidget {
  bool isBool = false;
  String productName;
  String productImage;
  String productId;
  int productPrice;
  int productQuantity;


  SingleItem(
      {Key? key,
      required this.isBool,
        required this.productName,
        required this.productImage,
        required this.productId,
        required this.productPrice,
        required this.productQuantity
      })
      : super(key: key);

  @override
  State<SingleItem> createState() => _SingleItemState();
}

class _SingleItemState extends State<SingleItem> {
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
                   widget.productImage),
              ),
            )),
            Expanded(
                child: Container(
              height: 100,
              // color: Colors.deepOrange,
              child: Column(
                mainAxisAlignment: widget.isBool == false
                    ? MainAxisAlignment.spaceAround
                    : MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text(
                        widget.productName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: textColor),
                      ),
                      Text(
                        '\$${widget.productPrice}/50gram',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  widget.isBool == false
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
              child: widget.isBool == false
                  ? Container(
                      padding: widget.isBool == false
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
                          padding: widget.isBool == false
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
        widget.isBool == false
            ? Container()
            : Divider(
                thickness: 1,
                color: Colors.black54,
              ),
      ],
    );
  }
}
