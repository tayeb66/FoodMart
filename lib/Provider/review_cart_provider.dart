import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_mart/Models/review_cart_model.dart';

class ReviewCartProvider extends ChangeNotifier {
  /// This method add/set reviewCart data on fireStore
  /// when user click on add button then reviewCart data save on fireStore
  /// data save through with parameter
  void addCartReviewData(
      {required String cartName,
      required String cartImage,
      required cartId,
      required int cartPrice,
      required int cartQuantity}) async {
    await FirebaseFirestore.instance
        .collection('ReviewCartData')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('MyReviewCartData')
        .doc(cartId)
        .set({
      'cartName': cartName,
      'cartImage': cartImage,
      'cartId': cartId,
      'cartPrice': cartPrice,
      'cartQuantity': cartQuantity,
    });
  }

  /// Data store on MyReviewCartData docs.
  /// From there data fetch using this method
  List<ReviewCartModel> reviewCartDataList = [];

  void getReviewCartData() async {
    List<ReviewCartModel> cartList = [];
    QuerySnapshot querySnapshot = await FirebaseFirestore.instance
        .collection('ReviewCartData')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('MyReviewCartData')
        .get();

    querySnapshot.docs.forEach((element) {
      ReviewCartModel reviewCartModel = ReviewCartModel(
          cartName: element.get('cartName'),
          cartImage: element.get('cartImage'),
          cartId: element.get('cartId'),
          cartPrice: element.get('cartPrice'),
          cartQuantity: element.get('cartQuantity'));

      /// all item add on list using add() method
      cartList.add(reviewCartModel);
    });
    reviewCartDataList = cartList;
    notifyListeners();
  }

  /// get all reviewCart data
  List<ReviewCartModel> get getReviewCartDataList {
    return reviewCartDataList;
  }

  /// Review Data render on review_cart_page.dart
  /// this method using delete review data
  void deleteReviewCartData(cartId) {
    FirebaseFirestore.instance
        .collection('ReviewCartData')
        .doc(FirebaseAuth.instance.currentUser!.uid)
        .collection('MyReviewCartData')
        .doc(cartId)
        .delete();
    notifyListeners();
  }

  // void deleteReviewCartData(cartId) {
  //   FirebaseFirestore.instance
  //       .collection('ReviewCartData')
  //       .doc(FirebaseAuth.instance.currentUser!.uid)
  //       .collection('MyReviewCartData')
  //       .doc(cartId)
  //       .delete();
  //   notifyListeners();
  // }
}
