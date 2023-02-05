import 'package:dw9_delivery_app/app/pages/auth/login/login_page.dart';
import 'package:dw9_delivery_app/app/pages/auth/register/register_page.dart';
import 'package:flutter/material.dart';
import 'package:dw9_delivery_app/app/core/provider/application_binding.dart';
import 'package:dw9_delivery_app/app/pages/home/home_router.dart';
import 'package:dw9_delivery_app/app/pages/product_detail/product_detail_router.dart';
import 'package:dw9_delivery_app/app/pages/splash/splash_page.dart';

import 'core/ui/theme/theme_config.dart';

class Dw9DeliveryApp extends StatelessWidget {
  const Dw9DeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ApplicationBinding(
      child: MaterialApp(
        title: 'Delivery App',
        theme: ThemeConfig.theme,
        routes: {
          '/': (context) => const SplashPage(),
          '/home': (context) => HomeRouter.page,
          '/productDetail': (context) => ProductDetailRouter.page,
          '/auth/login': (context) => const LoginPage(),
          '/auth/register': (context) => const RegisterPage(),
        },
      ),
    );
  }
}
