import 'package:flutter/material.dart';
import 'package:flutter_app1_video/pages/home_page.dart';
import 'package:flutter_app1_video/pages/login_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      //home:HomePage(),
      initialRoute: "/homepage",
      routes: {
        "/":(context)=>LogIn(),
        "/homepage" :(context)=>HomePage(),
        "/login":(context)=>LogIn(),
      },
    );
  }

}