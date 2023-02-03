import 'package:bloc/bloc.dart';
import 'package:dw9_delivery_app/app/core/ui/helpers/loader.dart';
import 'package:dw9_delivery_app/app/core/ui/helpers/messages.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class BaseState<T extends StatefulWidget, c extends BlocBase>
    extends State<T> with Loader, Messages {
  late final c controller;

  @override
  void initState() {
    super.initState();
    controller = context.read<c>();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      onReady();
    });
  }

  void onReady() {}
}
