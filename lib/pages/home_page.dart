
import 'package:flutter/material.dart';
import 'package:shopping_cart/pages/cart_page.dart';
import 'package:get/get.dart';
import 'package:shopping_cart/controller/controller.dart';
import 'package:shopping_cart/modell/product.dart';

class Homepage extends StatelessWidget {
  final CartController cartController = Get.find();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(title:Text("Delhi") ,)
      ,bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Stack(children:[  Icon(Icons.home),
          ]
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_2),
          label: 'Profile',
        ),
      ],

      selectedItemColor: Colors.amber[800],

    ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add_shopping_cart,color: Colors.white,),
        backgroundColor: Colors.black,
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Cartpage();},
          ),),
      ),
      body: Column( crossAxisAlignment: CrossAxisAlignment.start,

        children: [SizedBox(height: 20,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 24.0),
            child: Text('Good morning,'),
          ),
          SizedBox(height:20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Divider(),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: products.length, // Specify the number of items in the list
                itemBuilder: (BuildContext context, int index) {
                  // Return a widget for each item in the list
                  return
                    ListTile(onLongPress:(){},title: Text(products[index].name),
                      subtitle: Text("\$${products[index].price.toString()}"),
                      trailing: IconButton(
                        icon: Icon(Icons.add),

                        onPressed: () {
                            cartController.add(products[index]);
                          }
                      ),
                      leading: Image.asset(width: 80.0,
                        height: 50.0,
                        products[index].imageUrl,
                      ),
                    );
                }
            ),
          ),
        ],
      ),
    );
  }
}
