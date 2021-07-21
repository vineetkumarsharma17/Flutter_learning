import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int a=30;
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter app"),
      ),
      body: Container(
        child: Center(
          child: Text("Welcome to $a days code."),
        ),
      ),
      drawer: Drawer(
        child: Center(
          child: Text("This is drawer."),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "About"),

        ],
      ),
    );
  }
}
