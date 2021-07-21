import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("Hello welcome to 30 days of code"),
          ),
        ),
      ),
    )
  }

}