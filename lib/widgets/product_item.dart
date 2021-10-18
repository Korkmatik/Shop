import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:shop/providers/product.dart';

import 'package:shop/screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);

    return GridTile(
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(ProductDetailScreen.routeName, arguments: product.id,);
        },
        child: Image.network(
          product.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
      footer: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: GridTileBar(
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black87,
          leading: IconButton(
            icon: Icon(product.isFavorite ? Icons.favorite : Icons.favorite_border),
            onPressed: () {
              product.toggleFavoriteStatus();
            },
            color: Theme.of(context).accentColor,
          ),
          trailing: IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
            color: Theme.of(context).accentColor,
          ),
        ),
      ),
    );
  }
}
