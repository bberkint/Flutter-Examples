import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.yellow, accentColor: Colors.purple),
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(
          backgroundColor: Colors.orange,
          //backgroundColor: Colors.red,
          title: Text("Deneme"),
        ),
        body: Center(
          child: Container(
            width: 100,
            height: 100,
            color: Colors.red,
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              margin: EdgeInsets.all(40),
              width: 50,
              height: 50,
              child: Text("Berkin"),
            ),
            margin: EdgeInsets.symmetric(vertical: 30, horizontal: 80),
            padding: EdgeInsets.all(20),
            // constraints: BoxConstraints(
            //     minHeight: 100, minWidth: 100, maxHeight: 200, maxWidth: 200),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint("Tıklandı");
          },
          child: Icon(
            Icons.credit_card_off_outlined,
            color: Colors.yellow,
          ),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
