import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
  Product? _product;
  ProductItem(this._product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailScreen(
              product: _product,
            ),
          ),
        ).then((val) {});
      },
      child: Container(
        child: GridTile(
          child: Image.network(
            this._product?.imageUrl ?? "",
            fit: BoxFit.cover,
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black54,
            title: Text(_product?.title ?? ""),
            leading: IconButton(
              icon: Icon(Icons.favorite),
              onPressed: () {},
            ),
            trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}
