import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_app/models/product.dart';

class ProductItem extends StatelessWidget {
  Product? _product;
  ProductItem(this._product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      child: Image.network(
        this._product?.imageUrl ?? "",
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        title: Text(_product?.title ?? ""),
        leading: IconButton(
          icon: Icon(Icons.favorite),
          onPressed: () {

          },
          
        ),
        trailing:IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {

          },
          
        ) ,
      ),
    );
  }
}
