import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Customer Widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Menü"),
        ),
        body: Material(
          color: Colors.amberAccent,
          child: Text(
            "Uygulamanın Gövdesi",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.brown, fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
