import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  ProductManager(this.startingProduct);
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> products = [ ];
  @override
  void initState() {
    super.initState();
    products.add(widget.startingProduct);
  }
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      (Container(
          margin: EdgeInsets.all(10.0),
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  products.add("Advanced Food Tester");
                });

                // print(products);
              },
              child: Text("Add Product")))),
      Product(products)
    ]);
  }
}
