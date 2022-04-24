import 'package:flutter/material.dart';
import 'package:food_mart/Provider/review_cart_provider.dart';
import 'package:provider/provider.dart';

class CountPage extends StatefulWidget {
  String productName;
  String productImage;
  String productId;
  int productPrice;

  CountPage(
      {Key? key,
      required this.productName,
      required this.productImage,
      required this.productId,
      required this.productPrice,
     })
      : super(key: key);

  @override
  State<CountPage> createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  ReviewCartProvider reviewCartProvider = ReviewCartProvider();

  var counter = 1;

  /// By default bool is false.
  /// that's mean  by default current UI is false
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    print(widget.productId);
    reviewCartProvider = Provider.of<ReviewCartProvider>(context);
    return Container(
      height: 30,
      width: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey)),

      ///As bool is true so,condition will false
      /// current UI Current UI will not be displayed
      ///If bool is false so, condition will. true current UI will be displayed
      ///If bool is true so, condition will false. other UI will be displayed
      child: isTrue == true
          ? Row(
              children: [
                Expanded(
                    child: InkWell(
                  onTap: () {
                    /// if counter == 1 then, return other UI
                    /// cause other UI is false
                    /// other UI is ADD
                    if (counter == 1) {
                      setState(() {
                        isTrue = false;
                      });
                    }

                    setState(() {
                      counter--;
                    });
                  },
                  child: Icon(
                    Icons.remove,
                    size: 20,
                    color: Colors.green,
                  ),
                )),
                Expanded(
                    child: Text(
                  counter.toString(),
                  style: TextStyle(
                    color: Colors.green,
                  ),
                )),
                Expanded(
                    child: InkWell(
                  onTap: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.green,
                  ),
                )),
              ],
            )
          : Center(
              child: InkWell(
                /// If click on other UI then
                /// return Current UI
                /// case the condition is true
                onTap: () {
                  setState(() {
                    isTrue = true;
                  });
                  reviewCartProvider.addCartReviewData(
                    cartName: widget.productName,
                    cartImage: widget.productImage,
                    cartId: widget.productId,
                    cartPrice: widget.productPrice,
                    cartQuantity: counter,
                  );
                },
                child: Text('Add'),
              ),
            ),
    );
  }
}
