import 'package:flutter_application_products/products/presentation/bloc/bloc_product_events.dart';
import 'package:flutter_application_products/products/presentation/bloc/bloc_product_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BlocProducts extends Bloc<BlocProductEvents, BlocProductStates> {
  //create a object of usescases to fetch data from the repository
  // final UseCase useCase;
  // use get

  BlocProducts() : super(InitialProductState()) {
    on<FetchProductsEvent>(
      (event, emit) async {
        emit(LoadingProductState());
        try {
          // Assuming repository is already defined and initialized
          // final products = await fetchProducts();
          // emit(LoadedProductState(products));
        } catch (error) {
          emit(ErrorProductState(error.toString()));
        }
      },
      //review
    );
  }
}


  // @override
  // Stream<BlocProductStates> mapEventToState(BlocProductEvents event) async* {
  //   if (event is FetchProductsEvent) {
  //     yield LoadingProductState();
  //     try {
  //       // Assuming repository is already defined and initialized
  //       // final products = await repository.fetchProducts();
  //       // emit(LoadedProductState(products)) ;
  //     } catch (error) {
  //       yield ErrorProductState(error.toString());
  //     }
  //   }
  // }
// 