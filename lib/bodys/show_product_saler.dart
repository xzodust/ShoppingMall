import 'package:flutter/material.dart';
import 'package:shoppingmall/utility/my_constand.dart';

class ShowProductSaler extends StatelessWidget {
  const ShowProductSaler({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('this is Show Product'),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.pushNamed(context, MyConstant.routeAddProduct),
            child: Text('Add'),
            backgroundColor: MyConstant.primary,
            
      ),
    );
  }
}
