import 'dart:developer';

import 'package:bloc/bloc.dart';

import 'package:dw9_delivery_app/app/pages/home/home_state.dart';
import 'package:dw9_delivery_app/app/repositories/products/products_repository.dart';

class HomeController extends Cubit<HomeState> {
  final ProductsRepository _productRepository;

  HomeController(
    this._productRepository,
  ) : super(const HomeState.initial());

  Future<void> loadProducts() async {
    emit(state.copyWith(status: HomeStateStatus.loading));
    try {
      await Future.delayed(Duration(seconds: 2));
      final products = await _productRepository.findAllProducts();
      emit(state.copyWith(status: HomeStateStatus.loaded, products: products));
    } on Exception catch (e, s) {
      log('Erro ao buscarprodutos', error: e, stackTrace: s);
      emit(
        state.copyWith(
            status: HomeStateStatus.error,
            erroMessage: 'Erro ao buscar produtos'),
      );
    }
  }
}
