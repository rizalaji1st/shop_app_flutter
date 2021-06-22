import 'package:flutter/material.dart';
import '../providers/products.dart';
import 'package:provider/provider.dart';

class ProductDetailScreen extends StatelessWidget {
  // final String title;

  // ProductDetailScreen(this.title);
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context);
    if (route == null) return SizedBox.shrink();
    final productId = route.settings.arguments as String;
    final loadedProducts = Provider.of<Products>(
      context,
      listen: false,
    ).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProducts.title),
      ),
    );
  }
}
