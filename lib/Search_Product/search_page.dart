import 'package:flutter/material.dart';
import 'package:food_mart/Search_Product/search_item.dart';

import '../Constant/constant.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text('SearchProduct'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.menu),
          ),
        ],
      ),
      body: ListView(
        children: [
          const ListTile(
            title: Text('Items'),
          ),
          Container(
            height: 64,
            margin: const EdgeInsets.symmetric(horizontal: 12.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search for items in the store',
                contentPadding: const EdgeInsets.only(left: 10.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide.none,
                ),
                fillColor: const Color(0xFFD6D6D6),
                filled: true,
                suffixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12.0),
              child:Column(
                children: [
                  SearchItem(),
                  SearchItem(),
                  SearchItem(),
                  SearchItem(),
                  SearchItem(),
                ],
              )),
        ],
      ),
    );
  }
}
