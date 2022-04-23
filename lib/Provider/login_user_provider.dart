import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

class LoginUserProvider extends ChangeNotifier {
  /// This method using set data on FireStore docs
  void addUserData({
    required User? currentUser,
    required String? userName,
    required String? userImage,
    required String? userEmail,
  }) async {
    await FirebaseFirestore.instance
        .collection("usersData")
        .doc(currentUser?.uid)
        .set(
      {
        "userName": userName,
        "userEmail": userEmail,
        "userImage": userImage,
        "userUid": currentUser?.uid,
      },
    );
  }
}
