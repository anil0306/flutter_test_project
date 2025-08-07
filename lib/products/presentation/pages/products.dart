import 'package:flutter/material.dart';
import 'package:flutter_application_products/products/presentation/bloc/bloc_product_states.dart';
import 'package:flutter_application_products/products/presentation/bloc/bloc_products.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: Expanded(
        child: BlocBuilder<BlocProducts, BlocProductStates>(
          builder: (context, state) {
            // switch (state) {
            //   case (InitialProductState):
            //     return const Center(child: Text('Welcome to Products'));

            //   case LoadingProductState:
            //     // Optionally, you can show a loading indicator here
            //     break;
            //   case LoadedProductState:
            //     // Data is already loaded, no action needed
            //     break;
            //   case ErrorProductState:
            //     // Handle error state if needed
            //     break;
            // }

            // if (state is InitialProductState) {
            //   return const Center(child: Text('Welcome to Products'));
            // } else if (state is LoadingProductState) {
            //   return const Center(child: CircularProgressIndicator());
            // } else if (state is LoadedProductState) {
            //   return ListView.builder(
            //     itemCount: state.products.length,
            //     itemBuilder: (context, index) {

            //check for the item count number in the page
            //if it exceeds the limit then show a message to the user

            //       return ListTile(
            //         title: Text(state.products[index].toString()),
            //       );
            //     },
            //   );
            // } else if (state is ErrorProductState) {
            //   return Center(child: Text('Error: ${state.error}'));
            // }
            return const SizedBox.shrink();
          },
        ),
      ),
    );
  }
}
