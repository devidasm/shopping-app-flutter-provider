import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/provider/products.dart';
import 'package:shop_app/widgets/product_item_widget.dart';

class ProductsOverviewScreen extends StatelessWidget {
  ProductsOverviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myProductsProvider = Provider.of<Products>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shop'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10),
        itemCount: myProductsProvider.products.length,
        itemBuilder: (context, index) {
          return ProductItem(myProductsProvider.products[index]);
        },
      ),
    );
  }
}
