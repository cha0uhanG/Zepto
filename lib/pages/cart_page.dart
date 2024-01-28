import 'package:flutter/material.dart';
import 'package:shopping_cart/pages/cart_page.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/controller/controller.dart';
import 'package:shopping_cart/modell/product.dart';

class Cartpage extends StatelessWidget {
  final CartController cartController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() =>ListView.builder(
                itemCount: cartController.cartItems.length,
                itemBuilder: (context, index) {
                  return ListTile(onLongPress:(){cartController.minus(index);} ,
                    title: Text(cartController.cartItems[index].name),
                    subtitle: Text('\$${cartController.cartItems[index].price.toString()}'),
                    leading: Image.asset(width: 80.0,
                      height: 50.0,
                      cartController.cartItems[index].imageUrl,
                    ),
                  );
                },
              ),
            ),
          ),
          Obx(
            ()=> Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total Items: ${cartController.cartItems.length}'),
                  Text("${cartController.total().toString()}"),

                ],
              )
            ),
          ),
        ],
      ),
    );
  }
}