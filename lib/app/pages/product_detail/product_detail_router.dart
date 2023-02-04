import 'package:dw9_delivery_app/app/pages/product_detail/product_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductDetailRouter {
  ProductDetailRouter._();

  static Widget get page => MultiProvider(
        providers: [
          Provider(
            create: (context) => Object(),
          ),
        ],
        child: ProductDetailPage(),
      );
}
