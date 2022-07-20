import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String _img1 = 'https://www.imtacar.com/dist/img/lazy.jpg?v=3.0';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.yellow, accentColor: Colors.purple),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          title: Text("Başlık"),
        ),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: sorunluContainer,
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

  List<Widget> get sorunluContainer {
    return <Widget>[
      Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
      Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
    ];
  }
}

List<Widget> get flexibleContainer {
  return <Widget>[
    Flexible(
      flex: 2,
      child: Container(
        width: 100,
        height: 300,
        color: Colors.yellow,
      ),
    ),
    Flexible(
      flex: 2,
      child: Container(
        width: 100,
        height: 300,
        color: Colors.red,
      ),
    ),
    Flexible(
      flex: 2,
      child: Container(
        width: 100,
        height: 300,
        color: Colors.purple,
      ),
    ),
    Flexible(
      flex: 2,
      child: Container(
        width: 100,
        height: 300,
        color: Colors.blue,
      ),
    ),
  ];
}

List<Widget> get expandedContainer {
  return <Widget>[
    Expanded(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.yellow,
      ),
    ),
    Expanded(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.red,
      ),
    ),
    Expanded(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.blue,
      ),
    ),
    Expanded(
      child: Container(
        width: 75,
        height: 75,
        color: Colors.orange,
      ),
    ),
  ];
}
