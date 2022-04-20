import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_mart/Models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductModel> herbsProductList = [];

  /// this method using fetch data from FireStore
  fetchHerbsProduct() async {
    /// store all product in this list
    List<ProductModel> listProduct = [];
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('HerbsProduct').get();

    querySnapshot.docs.forEach((element) {
      ProductModel productModel = ProductModel(
          productName: element.get('productName'),
          productImage: element.get('productImage'),
          productPrice: element.get('productPrice'));

      listProduct.add(productModel);

    });
    /// assign value
    herbsProductList = listProduct;
    notifyListeners();
  }

  /// for get data
  List<ProductModel>get getHerbsProductList{
    return herbsProductList;
  }
}
