import 'package:flutter/material.dart';

class BottomNavIcon extends StatelessWidget {
     final String image;
     final String name;

  const BottomNavIcon({Key key, this.image, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             children: [
               Image.asset("images/$image", width: 26, height: 26,),
               SizedBox(height: 2,),
               Text(name, style:  TextStyle(color: Colors.black, fontSize: 12),)
             ],
           ),           
         );
  }
}