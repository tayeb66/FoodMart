import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_mart/Models/product_model.dart';

class ProductProvider extends ChangeNotifier {
  List<ProductModel> herbsProductList = [];
  List<ProductModel> fruitsProductList = [];


  /// this method using fetch data from FireStore
  fetchFruitsProduct() async{
    /// store all fruitsProduct in this list
    List<ProductModel> listFruits = [];
    QuerySnapshot querySnapshot1 =
    await FirebaseFirestore.instance.collection('FreshFruits').get();
    querySnapshot1.docs.forEach((element) {
      ProductModel productModel1 = ProductModel(
          productName: element.get('productName'),
          productImage: element.get('productImage'),
          productPrice: element.get('productPrice'));


      listFruits.add(productModel1);

    });
    fruitsProductList = listFruits;
    notifyListeners();
  }

  /// this method using fetch data from FireStore
  fetchHerbsProduct() async {
    /// store all herbsProduct in this list
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

  List<ProductModel> get getFruitsProductList{
    return fruitsProductList;
  }
}
