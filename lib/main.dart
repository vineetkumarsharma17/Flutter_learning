import 'package:flutter/material.dart';
import 'package:flutter_app1_video/pages/home_page.dart';
import 'package:flutter_app1_video/pages/login_page.dart';
import 'package:flutter_app1_video/utils/route.dart';
import 'package:google_fonts/google_fonts.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      //home:HomePage(),
      initialRoute: MyRoute.homeroute,
      routes: {
        MyRoute.loginroute:(context)=>LogIn(),
        MyRoute.homeroute :(context)=>HomePage(),
        "/login":(context)=>LogIn(),
      },
    );
  }

}