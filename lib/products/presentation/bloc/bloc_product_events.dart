import 'package:equatable/equatable.dart';

abstract class BlocProductEvents extends Equatable {
  const BlocProductEvents();

  @override
  List<Object?> get props => [];
}

class FetchProductsEvent extends BlocProductEvents {
  const FetchProductsEvent();

  @override
  List<Object?> get props => [];
}
