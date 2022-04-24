import 'package:flutter/material.dart';
import 'package:food_mart/Widgets/count.dart';

class SingleProduct extends StatelessWidget {
  /// Repeatedly using this fields for image,name,onTap
  final String productName;
  final String productImage;
  final int productPrice;
  final String productId;

  /// final Function()? onTap; same both
  final VoidCallback? onTap;

  const SingleProduct(
      {Key? key,
      required this.productId,
      required this.productImage,
      required this.productName,
      required this.productPrice,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// Create like card using Container()
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        height: 230,
        width: 160,
        decoration: const BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.all(Radius.circular(6.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Product image
            Expanded(
                flex: 2,
                child: Image.network(
                  productImage,
                  // height: 230,
                  // width: 160,
                  fit: BoxFit.cover,
                )),

            /// Product name
            Expanded(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    productName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),

                  /// Quantity & price
                  Text(
                    '\$$productPrice/50 gram',
                    style: TextStyle(color: Colors.grey),
                  ),

                  /// Two button create horizontally
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Row(
                        children: [
                          /// Button 1
                          Expanded(
                            child: Container(
                              height: 30,
                              width: 50,
                              decoration: BoxDecoration(
                                  //color: Colors.black,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.grey,
                                  )),
                              child: Row(
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Container(
                                        margin: EdgeInsets.only(left: 2),
                                        child: Text(
                                          '50 Gram',
                                          style: TextStyle(fontSize: 10),
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

                          /// Button 2
                          Expanded(
                              child: CountPage(
                            productName: productName,
                            productImage: productImage,
                            productId: productId,
                            productPrice: productPrice,
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
      ),
    );
  }
}
