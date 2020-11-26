import 'package:flutter/material.dart';
import 'package:sokoni/src/helpers/screen_navigation.dart';
import 'package:sokoni/src/models/products.dart';
import 'package:sokoni/src/screens/details.dart';

List <ProductModel> productList=[];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
             height: 240,
             child: ListView.builder(
               scrollDirection: Axis.horizontal,
               itemCount: productList.length,
               itemBuilder: (context, index){
                 return Padding(
                 padding: const EdgeInsets.fromLTRB(12, 14, 16, 12),
                 child: GestureDetector(
                      onTap: (){
                        changeScreen(context, Details(products: productList[index]));
                      },
                      child: Container(
                      height: 240,
                      width: 200,
                      decoration: BoxDecoration(
                      color:Colors.white,
                      boxShadow:[
                      BoxShadow(
                       color:  Colors.blueGrey[300],
                       offset: Offset(15, 5),
                       blurRadius: 30,
                       )
                   ]
               ),

               child: Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Image.asset("images/${productList[index].image}", height:120, width: 140,),
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(10.0),
                           child: Text("${productList[index].name}", style: TextStyle(fontSize: 8, color: Colors.black),),
                         ),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Container(
                             decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(20),  
                             color:Colors.white,
                             boxShadow:[
                             BoxShadow(
                             color:  Colors.blueGrey[300],
                             offset: Offset(1, 1),
                             blurRadius: 4,
                             )
                            ]
                              ),

                             /**child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: productList[index].wishList ? Icon(Icons.favorite, color: Colors.red, size: 18) :Icon(Icons.favorite_border, color: Colors.red, size: 18),
                             ),
                             */
                           ),
                         ),
                       ],
                     ),
                     SizedBox(
                       height:1,
                     ),
                     
                     Row(
                       mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           children:<Widget>[
                             Padding(
                               padding: const EdgeInsets.only(left:8.0),
                               child: Text("${productList[index].rating.toString()}", style: TextStyle(color: Colors.grey, fontSize: 14), ),
                             ),
                             SizedBox(
                               width:3,
                             ),
                             Icon(Icons.star, color: Colors.red, size: 16,),
                             Icon(Icons.star, color: Colors.red, size: 16,),
                             Icon(Icons.star, color: Colors.red, size: 16,),
                             Icon(Icons.star, color: Colors.red, size: 16,),
                             Icon(Icons.star, color: Colors.grey, size: 16,),
                          
                           ]
                         ),

                         Padding(
                           padding: const EdgeInsets.only(right:8.0),
                           child: Text("ksh.${productList[index].price.toString()}", style: TextStyle(fontSize:13, color: Colors.black,))
                         )
                       ],
                     )

                   ],
               ),

                    ),
                 )
                 );
               }
               ),
           );
  }
}