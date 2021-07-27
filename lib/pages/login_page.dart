import 'package:flutter/material.dart';
import 'package:flutter_app1_video/utils/route.dart';
class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String name='vk';
  bool changeButton=false;
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
            Text("Welcome $name",style: TextStyle(
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
                   onChanged: (value){
                     name=value;
                     setState(() {});
                   },
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
                 InkWell(
                   onTap: () async {
                     setState(() {
                       changeButton = true;
                     });
                     await Future.delayed(Duration(seconds: 1));
                     Navigator.pushNamed(context, '/home');
                   },
                   child: AnimatedContainer(
                     duration: Duration(seconds: 1),
                     width: changeButton ? 50 : 150,
                     height: 50,
                     alignment: Alignment.center,
                     child: changeButton
                         ? Icon(
                       Icons.done,
                       color: Colors.white,
                     )
                         : Text(
                       "Login",
                       style: TextStyle(
                           color: Colors.white,
                           fontWeight: FontWeight.bold,
                           fontSize: 18),
                     ),
                     decoration: BoxDecoration(
                       color: Colors.deepPurple,
                       borderRadius:
                       BorderRadius.circular(changeButton ? 50 : 8),
                     ),
                   ),
                 ),
                 // ElevatedButton(
                 //     onPressed: (){
                 //       Navigator.pushNamed(context, MyRoute.homeroute);
                 //     },
                 //     child: Text("Submit"),
                 // style: TextButton.styleFrom(
                 //   minimumSize: Size(100, 40)
                 // ),
                 // )
               ],
             ),
           )
          ],
        ),
      )
    );
  }
}
