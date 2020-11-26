import 'package:flutter/material.dart';
import 'package:sokoni/src/models/category.dart';
//import 'package:sokoni/src/widgets/loading.dart';
//import 'package:transparent_image/transparent_image.dart';

List <CategoryModel> categoriesList = [];

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index){
          return Padding (
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  decoration:
                  BoxDecoration(color: Colors.white,
                  boxShadow:[
                    BoxShadow(
                      color: Colors.red[50],
                      offset: Offset(4,6),
                      blurRadius: 20,
                    )
                  ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Image.asset("images/${categoriesList[index].image}") , 
                    ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(categoriesList[index].name, 
                style: TextStyle(
                  color: Colors.black, fontSize: 14),
                  ),
              ],
              ),
          );
        },
        ),
    );
    /*** Padding(
      padding: const EdgeInsets.all(6),
      child: Stack(
        children: <Widget>[
          Container(
            width: 140,
            height: 160,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(child: Align(
                      alignment: Alignment.center,
                      child: Loading(),
                    )),
                    Center(
                      child: FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: category.image),
                    )
                  ],
                )),
          ),

          Container(
            width: 140,
            height: 160,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.05),
                    Colors.black.withOpacity(0.025),
                  ],
                )),
          ),

          Positioned.fill(
              child: Align(
                  alignment: Alignment.center,
                  child: Text( category.name, style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.w300,)
                  )
                  ))
        ],
      ),
    );
    */
  }
}
