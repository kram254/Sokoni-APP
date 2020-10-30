import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sokoni/src/providers/auth.dart';
import 'package:sokoni/src/screens/Login.dart';
import 'package:sokoni/src/screens/home.dart';
import 'package:sokoni/src/widgets/loading.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //we call our Multiproviders so that our App can recognize the providers we've used.

  runApp(
    MultiProvider(
      providers:[
      ChangeNotifierProvider.value(
      value: AuthProvider.initialize()
      )
  ],
   child:MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sokoni',
      theme: ThemeData(    

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
         ),
       home: ScreensController(),
          )
  ));
}

class ScreensController extends StatelessWidget{
  @override
  Widget build( BuildContext context) {
  
    final user = Provider.of<AuthProvider>(context);
    switch(user.status){
      case Status.Uninitialized:
      return Loading();
      case Status.Unauthenticated:
      case Status.Authenticating:
      return LoginScreen();
      case Status.Authenticated:
       return HomePage();
      default: return LoginScreen(); 
    }
  } 
}