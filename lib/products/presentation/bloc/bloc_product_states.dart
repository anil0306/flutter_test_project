import 'package:equatable/equatable.dart';

abstract class BlocProductStates extends Equatable {}

class InitialProductState extends BlocProductStates {
  @override
  List<Object?> get props => [];
}

class LoadingProductState extends BlocProductStates {
  @override
  List<Object?> get props => [];
}

//where we get the data from the repository and then update the UI
class LoadedProductState extends BlocProductStates {
  final List<dynamic> products;

  LoadedProductState(this.products);

  @override
  List<Object?> get props => [products];
}

class ErrorProductState extends BlocProductStates {
  final String error;

  ErrorProductState(this.error);

  @override
  List<Object?> get props => [error];
}
