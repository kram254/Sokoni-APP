import 'package:flutter/material.dart';
import 'package:sokoni/src/helpers/screen_navigation.dart';
import 'package:sokoni/src/screens/bag.dart';
import 'package:sokoni/src/widgets/bottom_navigation_icons.dart';
import 'package:sokoni/src/widgets/categories.dart';
import 'package:sokoni/src/widgets/featured_products.dart';
import 'package:sokoni/src/widgets/small_floating_button.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: ListView(
          children:<Widget> [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             ///creates space in between the components
             children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("What would you like to order?",style: TextStyle(fontSize: 15)),
               ),
               
               Stack(
                 children:<Widget>[ 
                   IconButton(icon: Icon(Icons.notifications_none), onPressed:(){} ),
                   Positioned(
                       top: 12,
                       right: 12,
                       child: Container(
                       height: 10,
                       width:10,
                       decoration: BoxDecoration(
                         color: Colors.red,
                         borderRadius: BorderRadius.circular(20)
                       )
                     ),
                   )
                 
                 ]
                 ),
             ],
           ),

           SizedBox(height: 5,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Container(
               decoration: BoxDecoration(
                 color:Colors.white,
                 boxShadow:[
                   BoxShadow(
                     color:  Colors.blueGrey[300],
                     offset: Offset(1, 1),
                     blurRadius: 4,
                     )
                 ]
               ),
               child: ListTile(
                 leading:Icon (Icons.search, color: Colors.red,), 
                 title: TextField(
                   decoration: InputDecoration(
                     hintText: "Find foods or restaurants",
                     border: InputBorder.none,
                   )
                 ),
                 trailing: Icon (Icons.filter_list, color: Colors.red,),
               ),
             ),
           ),

           SizedBox(height: 5,),
             
           Categories(),

           ///SizedBox(height: 5,),

           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Featured", style: TextStyle(color: Colors.red, fontSize:15),),
           ),

           Featured(),
           
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Text("Popular", style: TextStyle(color: Colors.red, fontSize:15),),
           ),
           
           Padding(
             padding: const EdgeInsets.all(2),
             child: Stack(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(0),
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(20),
                     child: Image.asset("images/Chicken-Biriyani.jpg"),
                     ),
                 ),

                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SmallButton(Icons.favorite),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            children:[
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Icon(Icons.star, color: Colors.yellow[900], size:20),
                            ),
                            Text("4.5"),
                            ],
                          ),
                        ),
                      ),
                    ],
                   )
                   ),

                   Positioned.fill(
                     child:Align(
                       alignment: Alignment.bottomCenter,
                       child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20), 
                            bottomRight: Radius.circular(20)),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,

                              colors: [
                                 Colors.black.withOpacity(0.8),
                                 Colors.black.withOpacity(0.7),
                                 Colors.black.withOpacity(0.6),
                                 Colors.black.withOpacity(0.6),
                                 Colors.black.withOpacity(0.4),
                                 Colors.black.withOpacity(0.1),
                                 Colors.black.withOpacity(0.05),
                                 Colors.black.withOpacity(0.025),
                              ]
                              )
                          ),
                       ),
                     )
                    
                   ),
                   
                   
                   Positioned.fill(
                     child: Align(alignment: Alignment.bottomCenter,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Padding(
                           padding: EdgeInsets.fromLTRB(12,8,8,8),
                           child: RichText(text: TextSpan(children: [
                             TextSpan(text: "Biryani \n", style: TextStyle(color: Colors.white, fontSize:16, fontWeight: FontWeight.w700)),
                             TextSpan(text: "by", style: TextStyle(color:  Colors.white, fontSize: 12, fontWeight: FontWeight.w300) ),
                             TextSpan(text:" Kariofoods", style: TextStyle(color: Colors.white, fontSize:16, fontWeight: FontWeight.w500))
                           ], style: TextStyle(color: Colors.black)
                           )),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: RichText(text: TextSpan(children:[
                              TextSpan(text: "Ksh.800", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700))
                           ], style: TextStyle(color: Colors.white),
                           ),
                           ),
                         ),
                       ],
                       
                     ),
                   ),
                   ),

                /**** 
                Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Icon(Icons.favorite, color: Colors.red),
                       ),

                    Container(
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),

                     ],
                   ),
                 )
                  ***/
                 
               ],
             ),
           )

          ]
        ),
      ),

      bottomNavigationBar: 
      Container(
        height: 61,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BottomNavIcon(
              image: "home2.png",
              name: "Home",
            ),

            BottomNavIcon(
              image: "target2.png",
              name: "NearBy"
            ),

            BottomNavIcon(
              onTap: (){
                changeScreen(context, ShoppingBag());
              },
              image: "shopping-bag.png",
              name: "Cart",
            ),   

            BottomNavIcon(
              image: "account.png",
              name: "Account",
            ) 
        
        ],
        ),
      ),
      
    );
  }
}