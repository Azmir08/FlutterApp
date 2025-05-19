import 'package:flutter/material.dart';
import 'package:minimalist_shop/components/my_drawer.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Shop Page"),
      ),
      drawer: MyDrawer(),
    );
  }
}
