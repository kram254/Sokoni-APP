import 'package:flutter/material.dart';
import 'package:sokoni/src/models/category.dart';


List<Category> categoriesList = [
  Category(name: "Salad", image: "salad.png"),
  Category(name: "Pizza", image: "pizza.png"),
  Category(name: "Chicken", image: "fried-chicken.png"),
  Category(name: "Fries", image: "fries.png"),
  Category(name: "Hot Dog", image: "hot-dog.png"),
  Category(name: "Steak", image: "meat.png"),
  Category(name: "Burger", image: "burger.png")

];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
             height: 105,
             child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoriesList.length,
                itemBuilder:(context, index){
                      return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                   children:<Widget>[
                     Container(
                     decoration: BoxDecoration(
                     color:Colors.white,
                     boxShadow:[
                       BoxShadow(
                         color:  Colors.blueGrey[200],
                         offset: Offset(4, 6),
                         blurRadius: 20,
                         )
                      ]
                      ),
                    child: Padding(padding: const EdgeInsets.all(8.0),
                    child:Image.asset("images/${categoriesList[index].image}", width: 50,),
                      ),
                  
                     ),
                     SizedBox(height: 5,),
                     Text(categoriesList[index].name, style: TextStyle(color: Colors.black, fontSize: 14),),
                   ]
                 ),
               );
                    },
             ),
           );
  }
}