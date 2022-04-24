import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_mart/Provider/login_user_provider.dart';
import 'package:food_mart/Provider/product_provider.dart';
import 'package:food_mart/Provider/review_cart_provider.dart';
import 'package:food_mart/views/home_page.dart';
import 'package:food_mart/views/login_page.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductProvider>(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider<LoginUserProvider>(
            create: (context) => LoginUserProvider()),
        ChangeNotifierProvider<ReviewCartProvider>(
            create: (context) => ReviewCartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
