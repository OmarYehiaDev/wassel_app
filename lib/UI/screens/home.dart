import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "وصل",
          style: TextStyle(
            fontFamily: "Blue-Ocean",
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Text("This is HomePage"),
      ),
    );
  }
}
