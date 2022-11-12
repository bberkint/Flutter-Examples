import 'package:flutter/material.dart';

class Sayfa2 extends StatefulWidget {
  @override
  State<Sayfa2> createState() => _Sayfa2State();
}

class _Sayfa2State extends State<Sayfa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("StateFul")],
        ),
      ), //Tasarım Yapılan Alan
    );
  }
}
