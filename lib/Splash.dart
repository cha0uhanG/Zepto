import 'package:flutter/material.dart';
import 'package:shopping_cart/pages/home_page.dart';


class Splash extends StatefulWidget {


  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {



  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Homepage(),
      )
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("ZEPTO",style: TextStyle(fontSize: 50,fontWeight:FontWeight.w300,color:Colors.deepPurple  )
            ,)
          ,),SizedBox(height:10),
          const CircularProgressIndicator()
        ],
      ),
    );
  }
}