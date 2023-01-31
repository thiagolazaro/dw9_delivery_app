import 'package:dw9_delivery_app/app/core/ui/helpers/size_extensions.dart';
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
          Row(
            children: [
              Container(
                color: Colors.red,
                width: context.percentWith(.6),
                height: 200,
              ),
              Container(
                color: Colors.blue,
                width: MediaQuery.of(context).size.width * 0.4,
                height: 200,
              ),
            ],
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'text'),
          )
        ],
      ),
    );
  }
}
