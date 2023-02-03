import 'package:equatable/equatable.dart';
import 'package:match/match.dart';

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

  const HomeState({
    required this.status,
    required this.products,
    this.erroMessage,
  });

  const HomeState.initial()
      : status = HomeStateStatus.initial,
        products = const [],
        erroMessage = null;

  @override
  List<Object?> get props => [status, products];

  HomeState copyWith({
    HomeStateStatus? status,
    List<ProductModel>? products,
    String? erroMessage,
  }) {
    return HomeState(
      status: status ?? this.status,
      products: products ?? this.products,
      erroMessage: erroMessage ?? this.erroMessage,
    );
  }
}
