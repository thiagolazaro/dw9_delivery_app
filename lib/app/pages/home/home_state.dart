import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

import 'package:dw9_delivery_app/app/dto/order_product_dto.dart';
import 'package:dw9_delivery_app/app/models/product_model.dart';

part 'home_state.g.dart';

@match
enum HomeStateStatus {
  initial,
  loading,
  loaded,
  error,
}

class HomeState extends Equatable {
  final HomeStateStatus status;
  final List<ProductModel> products;
  final String? erroMessage;
  final List<OrderProductDto> shoppingBag;

  const HomeState({
    required this.status,
    required this.products,
    required this.shoppingBag,
    this.erroMessage,
  });

  const HomeState.initial()
      : status = HomeStateStatus.initial,
        products = const [],
        shoppingBag = const [],
        erroMessage = null;

  @override
  List<Object?> get props => [status, products, shoppingBag];

  HomeState copyWith({
    HomeStateStatus? status,
    List<ProductModel>? products,
    String? erroMessage,
    List<OrderProductDto>? shoppingBag,
  }) {
    return HomeState(
      status: status ?? this.status,
      products: products ?? this.products,
      erroMessage: erroMessage ?? this.erroMessage,
      shoppingBag: shoppingBag ?? this.shoppingBag,
    );
  }
}
