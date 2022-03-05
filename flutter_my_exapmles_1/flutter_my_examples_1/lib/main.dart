import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp (
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 100, 33),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 250, 107, 50),
          centerTitle: true,
          title: Text("My Favorite Movie"),
        ),
        body: Center(
          child: Image.asset("images/indir.jpg"),
        ),
      ),
    ),
  );
}

