import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';

class ProductDetailScreen extends StatelessWidget {

  Product? product;
  ProductDetailScreen({Key? key,this.product,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product?.title ?? ""),
      ),
      body: Column(),
    );
  }
}
