import 'package:flutter/material.dart';
import 'package:flutter_app1_video/widgets/drawer.dart';
class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final int a=30;
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App",),
      ),
      body: Container(
        child: Center(
          child: Text("Welcome to $a days code."),
        ),
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "About"),

        ],
      ),
    );
  }
}
