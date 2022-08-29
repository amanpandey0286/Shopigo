import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopigo/models/catalog_model.dart';

import '../Widget/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var CatalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodeData = jsonDecode(CatalogJson);
    var productData = decodeData["products"];
    ProductList.allProducts = List.from(productData)
        .map<Products>((item) => Products.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      child: SafeArea(
        child: Column(
          children: [
            const Text(
              "Shopigo",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Flexible(
              flex: 1,
              child: (ProductList.allProducts != null &&
                      ProductList.allProducts.isNotEmpty)
                  ? ListView.builder(
                      itemCount: ProductList.allProducts.length,
                      itemBuilder: (context, index) {
                        return ItemWidget(
                          item: ProductList.allProducts[index],
                        );
                      },
                    )
                  : Center(
                      child: CircularProgressIndicator(),
                    ),
            )
          ],
        ),
      ),
    );
  }
}
