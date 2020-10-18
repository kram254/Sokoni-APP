import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:sokoni/src/models/products.dart';

class Details extends StatefulWidget {
final Products products;

 Details({@required this.products});


  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
              child: Column(
          children:[
            Container(
              height: 300,
              child: Stack(
                children: [
                 
                  Carousel(
                    images: [
                      AssetImage("images/${widget.products.image}"),
                      AssetImage("images/${widget.products.image}"),
                      AssetImage("images/${widget.products.image}")
                    ],
                    dotBgColor: Colors.white,
                    dotColor: Colors.grey,
                    dotIncreasedColor: Colors.red,
                    dotIncreaseSize: 1.2,
                    autoplay: false,
                  ),
                   Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [                      
                       IconButton(
                        onPressed: (){Navigator.pop(context);},
                        icon: Icon(Icons.arrow_back_ios, color: Colors.black,)
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Image.asset("images/shopping_bag.png", width: 30, height:30,),
                          Positioned(
                            right: 2,
                            bottom: 1,
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
                    ),
                  )
                     ],
                   ),
                   Positioned(
                     right: 20,
                     bottom: 55,
                     child: Container(
                       decoration: BoxDecoration(
                         color:  Colors.white,
                         borderRadius: BorderRadius.circular(20),
                         boxShadow: [ BoxShadow(
                           color: Colors.grey,
                           offset: Offset(2, 1),
                           blurRadius: 4,
                         )
                         ]
                       ),
                        child: Icon(Icons.favorite, size:22, color: Colors.red,),
                     ),
                   )
                ],
              ),
            ),

            /**** Container(  
              height: 70,  
              width: 350,          
              decoration: BoxDecoration(
                color:  Colors.white,
                boxShadow: [ BoxShadow(
                  color: Colors.grey,
                  offset: Offset(2, 1),
                  blurRadius: 4,
                         )
                         ]
                       ),
                       */
                      
              Padding(
                padding: const EdgeInsets.only(left:40.0 , right: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.products.name + "\n" + "by KarioFood", style: TextStyle(fontSize: 20,color: Colors.black, fontWeight:FontWeight.bold,)),
                    Text("Kshs."+ widget.products.price.toString(), style: TextStyle(color: Colors.red, fontWeight:FontWeight.w700,)),

                  ],
                ),
              ),

              SizedBox(
                height: 25,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(icon: Icon(Icons.remove, size: 36, color: Colors.red,), onPressed: (){}),
                  ),
                  GestureDetector(
                    onTap: (){},
                      child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,

                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(28, 12, 28, 12),
                        child: Text("Add To Cart", style: TextStyle( color: Colors.white,fontSize: 22, fontWeight: FontWeight.w500),),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(icon: Icon(Icons.add, size: 36,color: Colors.red), onPressed: (){}),
                  ),
                ],
              )

          ]
        ),
      ),
    );
  }
}