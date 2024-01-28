import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/pages/home_page.dart';
import 'package:shopping_cart/pages/cart_page.dart';
import 'package:shopping_cart/controller/controller.dart';
import 'package:shopping_cart/Splash.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final CartController cartController = CartController();



  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(debugShowCheckedModeBanner: false,
      title: 'Shopping Cart App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: BindingsBuilder(() {
        Get.put(cartController);
      }),
      initialRoute: '/hh',
      getPages: [
        GetPage(name: '/hh', page: () => Splash()),
        GetPage(name: '/Home', page: () => Homepage()),
        GetPage(name: '/cart', page: () => Cartpage()),
      ],
    );
  }
}
