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
          color: Colors.red.shade300,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [Text("data")],
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.green,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.red,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.blue,
              ),
              Icon(
                Icons.add_circle,
                size: 64,
                color: Colors.orange,
              ),
            ],
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

  Widget containerDersleri() {
    return Center(
      child: Container(
        width: 300,
        height: 200,
        decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.rectangle,
            border: Border.all(width: 4, color: Colors.brown),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            image: DecorationImage(
                image: NetworkImage(_img1),
                fit: BoxFit.fitHeight,
                repeat: ImageRepeat.repeat),
            boxShadow: [
              BoxShadow(
                  color: Colors.green, offset: Offset(0, 20), blurRadius: 10),
              BoxShadow(color: Colors.yellow, offset: Offset(0, -20))
            ]),
      ),
    );
  }
}
