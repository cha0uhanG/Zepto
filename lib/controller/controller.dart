import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:shopping_cart/modell/product.dart";

class CartController extends GetxController {

  RxList <Product>cartItems =<Product>[].obs;

void add(producttt)
{
cartItems.add(producttt);
update();

}
  void minus( int indexx )
  {
    cartItems.removeAt(indexx);
    update();

  }

 double total(){
  double sum =0 ;
  int i =0 ;
  for( i=0;i<cartItems.length;i++)
    {
      sum+=cartItems[i].price ;
    }
  return sum ;

 }

}

