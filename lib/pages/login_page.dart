import 'package:flutter/material.dart';
import 'package:flutter_app1_video/utils/route.dart';
class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/user.png",
            height: 200,),
            SizedBox(
              height: 20.0,
            ),
            Text("Welcome",style: TextStyle(
                fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical:16.0,horizontal: 32.0),
             child: Column(
               children: [
                 TextFormField(
                   decoration: InputDecoration(
                     hintText: "Enter UserName",
                     labelText: "Username",
                   ),
                 ),
                 TextFormField(
                   obscureText: true,
                   decoration: InputDecoration(
                     hintText: "Enter Password",
                     labelText: "Password",
                   ),
                 ),
                 SizedBox(
                   height: 20.0,
                 ),
                 ElevatedButton(
                     onPressed: (){
                       Navigator.pushNamed(context, MyRoute.homeroute);
                     },
                     child: Text("Submit"),
                 style: TextButton.styleFrom(
                   minimumSize: Size(100, 40)
                 ),
                 )
               ],
             ),
           )
          ],
        ),
      )
    );
  }
}
