import 'package:dw9_delivery_app/app/core/ui/styles/colors_app.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        primaryColor: ColorsApp.i.primary,
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorsApp.i.primary,
          primary: ColorsApp.i.primary,
          secondary: ColorsApp.i.secondary,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Splash'),
        ),
        body: Column(
          children: [
            Container(),
            ElevatedButton(
              onPressed: () {},
              child: Text('Teste'),
            )
          ],
        ),
      ),
    );
  }
}
