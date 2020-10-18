import 'package:flutter/material.dart';
import 'package:sokoni/src/models/products.dart';

class ShoppingBag extends StatefulWidget {
  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  Products products = Products(name:"Burger", image: "burger2.png", vendor: "KarioFoods", price: 200, wishList: true, rating: 4.4 );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black), onPressed: null),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Shopping Cart", style: TextStyle(color: Colors.black, fontSize: 20,)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Image.asset("images/shopping_bag.png", width:30, height: 30,),
                ),
                Positioned(
                            right: 10,
                            bottom: 7,
                              child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blueGrey,
                                    offset: Offset(2, 1),
                                    blurRadius: 3,

                                ),
                                ]
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 3, right: 4),
                                child: Text("2", style: TextStyle(color: Colors.red, fontSize: 13, fontWeight: FontWeight.w900),
                              ),
                            ),
                            ),
                          )
              ],
            ),
          )
        ],
        ),
        backgroundColor:  Colors.white,
        body: ListView(
          children:[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                height: 120,
                width: MediaQuery.of(context).size.width-10,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                  BoxShadow(
                  color: Colors.red[200],
                  offset:Offset(3, 2),
                  blurRadius: 20,
                    ),
                  ]
                ),

                child: Row(
                  children: [
                    Image.asset("images/${products.image}", height: 110, width: 110),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [                        
                        RichText(text: TextSpan(children: [
                          TextSpan(text: products.name + "\n", style:  TextStyle(color:  Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                        
                          TextSpan(text: "Ksh."+products.price.toString()+ "\n", style:  TextStyle(color:  Colors.black, fontSize: 15, fontWeight: FontWeight.w500)),
                        ]
                        )
                        ),
                        SizedBox(
                          width: 90,
                        ),
                        
                        IconButton(icon: Icon(Icons.delete), onPressed: (){}),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ]
        ),
      
    );
  }
}