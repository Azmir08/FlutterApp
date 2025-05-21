import 'package:flutter/material.dart';
import 'package:minimalist_shop/models/shop.dart';
import 'package:minimalist_shop/pages/cart_page.dart';
import 'package:minimalist_shop/pages/intro_page.dart';
import 'package:minimalist_shop/pages/shop_page.dart';
import 'package:minimalist_shop/themes/light_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Shop(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const IntroPage(),
      theme: lightMode,
      routes: {
        '/intro_page': (context) => IntroPage(),
        '/shop_page': (context) => ShopPage(),
        '/cart_page': (context) => CartPage(),
      },
    );
  }
}
