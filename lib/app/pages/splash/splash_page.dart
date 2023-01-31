import 'package:flutter/material.dart';

import '../../core/config/env/env.dart';
import '../../core/ui/widgets/delivery_button.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Column(
        children: [
          Container(),
          DeliveryButton(
            width: 200,
            height: 200,
            label: Env.i['backend_base_url'] ?? '',
            onPressed: () {},
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'text'),
          )
        ],
      ),
    );
  }
}
