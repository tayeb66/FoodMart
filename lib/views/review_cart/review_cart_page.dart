import 'package:flutter/material.dart';
import 'package:food_mart/Constant/constant.dart';
import 'package:food_mart/Models/review_cart_model.dart';
import 'package:food_mart/Provider/review_cart_provider.dart';
import 'package:food_mart/Widgets/single_item.dart';
import 'package:provider/provider.dart';


class ReviewCartPage extends StatelessWidget {
  const ReviewCartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ReviewCartProvider reviewCartProvider = ReviewCartProvider();
    reviewCartProvider = Provider.of<ReviewCartProvider>(context);
    reviewCartProvider.getReviewCartData();
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
      body: ListView.builder(
          itemCount: reviewCartProvider.getReviewCartDataList.length,
          itemBuilder: (context, index) {
            ReviewCartModel reviewCartModel =
                reviewCartProvider.getReviewCartDataList[index];
            return Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                SingleItem(
                    isBool: true,
                    productName: reviewCartModel.cartName,
                    productImage: reviewCartModel.cartImage,
                    productId: reviewCartModel.cartId,
                    productPrice: reviewCartModel.cartPrice,
                    productQuantity: reviewCartModel.cartQuantity),
                // SingleItem(isBool: true),
                // SingleItem(isBool: true),
                // SingleItem(isBool: true),
              ],
            );
          }),
    );
  }
}
