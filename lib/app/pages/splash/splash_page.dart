import 'package:dw9_delivery_app/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          title: const Text('Splash'),
        ),
        body: Container(),
      ),
    );
  }
}
