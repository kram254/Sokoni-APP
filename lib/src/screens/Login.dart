import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sokoni/src/helpers/screen_navigation.dart';
import 'package:sokoni/src/providers/user.dart';
import 'package:sokoni/src/screens/Registration.dart';
import 'package:sokoni/src/screens/home.dart';
import 'package:sokoni/src/widgets/loading.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<UserProvider>(context);
    return Scaffold(
      key: _key,
      backgroundColor: Colors.white,
      body: authProvider.status == Status.Authenticating? Loading() : SingleChildScrollView(
        child:Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/sokoni.png", height: 240, width: 240,),
              ],
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[400]),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextFormField(
                    controller: authProvider.email,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                      icon: Icon(Icons.email)
                    )
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey[400]),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextFormField(
                    controller: authProvider.password,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      icon: Icon(Icons.lock)
                    )
                  ),
                ),
              ),
            ),

            SizedBox(height: 15,),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: GestureDetector(
                  onTap: () async{ 
                    if(!await authProvider.signIn()){
                     _key.currentState.showSnackBar(
                       SnackBar(content: Text("Sokoni login failed")),
                     );
                     return; ///cuts the execution of this page
                    }
                     authProvider.cleanControllers();
                     changeScreenReplacement(context, HomePage());

                  },
                  child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.grey[400]),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom:  10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Login", style: TextStyle(color: Colors.white, fontSize: 22),)
                      ],
                    )
                  ),
                ),
              ),
            ),

             GestureDetector(
               onTap: (){
                 changeScreen(context, RegistrationScreen());
               },
                child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                          Text("Register Here", style: TextStyle(color: Colors.blue, fontSize: 22),)
                        ],
                      ),
             ),
          ],
        )
      ),
    );
  }
}