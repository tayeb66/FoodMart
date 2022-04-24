import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class ReviewCartProvider extends ChangeNotifier {
  /// This method add/set review data on fireStore
  /// when user click on add button then review data save on fireStore
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
}
