import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String username;
   HomeScreen(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Text("Welcome" + username),
          SizedBox(
            height: 50,
          ),
        Text('#FlutterWithNabin', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0),fontSize: 25)),

        ],
      ),
    );
  }
}