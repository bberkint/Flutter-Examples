import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//Dokumanlar cok onemlidir o yüzden mutlaka yazmak gerekir
class MyApp extends StatelessWidget {
  Container containerOlustur(String harf, Color renk, {double margin = 0}) {
    return Container(
      width: 75,
      height: 75,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: margin),
      color: renk,
      child: Text(
        harf,
        style: TextStyle(fontSize: 48),
      ),
    );
  }

  Row dartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        containerOlustur('D', Colors.orange.shade200),
        containerOlustur('A', Colors.orange.shade400),
        containerOlustur('R', Colors.orange.shade600),
        containerOlustur('T', Colors.orange.shade800),
      ],
    );
  }

  Column dersleriColumnOlustur() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: containerOlustur('E', Colors.orange.shade300, margin: 15),
        ),
        Expanded(
          child: containerOlustur('R', Colors.orange.shade400, margin: 15),
        ),
        Expanded(
          child: containerOlustur('S', Colors.orange.shade500, margin: 15),
        ),
        Expanded(
          child: containerOlustur('L', Colors.orange.shade600, margin: 15),
        ),
        Expanded(
          child: containerOlustur('E', Colors.orange.shade700, margin: 15),
        ),
        Expanded(
          child: containerOlustur('R', Colors.orange.shade800, margin: 15),
        ),
        Expanded(
          child: containerOlustur('I', Colors.orange.shade900, margin: 15),
        ),
      ],
    );
  }

  String _img1 =
      'https://images.unsplash.com/photo-1552519507-da3b142c6e3d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2Fyc3xlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80';

  String _img2 =
      'https://emrealtunbilek.com/wp-content/uploads/2016/10/apple-icon-72x72.png';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.teal, accentColor: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Başlık'),
        ),
        body: Container(
          color: Colors.red.shade100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              dartRowunuOlustur(),
              Expanded(child: dersleriColumnOlustur()),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('Tıklandı');
          },
          child: Icon(
            Icons.account_circle_rounded,
            color: Colors.blue,
          ),
          backgroundColor: Colors.red,
        ),
      ),
    );
  }

  Container containerIcindeRow() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: sorunluContainer,
      ),
    );
  }

  List<Widget> get sorunluContainer {
    return [
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
        color: Colors.red,
      ),
    ];
  }

  List<Widget> get flexibleContainer {
    return [
      Flexible(
        flex: 1,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.yellow,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.red,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.blue,
        ),
      ),
      Flexible(
        flex: 1,
        child: Container(
          width: 200,
          height: 300,
          color: Colors.purple,
        ),
      ),
      Flexible(
        child: Container(
          width: 100,
          height: 300,
          color: Colors.red,
        ),
      ),
    ];
  }

  List<Widget> get expandedContainer {
    return [
      Expanded(
        flex: 2,
        child: Container(
          width: 25,
          height: 75,
          color: Colors.yellow,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          height: 75,
          color: Colors.red,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          width: 575,
          height: 75,
          color: Colors.blue,
        ),
      ),
      Expanded(
        flex: 2,
        child: Container(
          width: 75,
          height: 75,
          color: Colors.orange,
        ),
      ),
    ];
  }

  Container rowColumDersleri() {
    return Container(
      color: Colors.red.shade300,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'E',
              ),
              Text('M'),
              Text('R'),
              Text('E'),
            ],
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
    );
  }

  Widget containerDersleri() {
    return Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(
          'emre',
          style: TextStyle(fontSize: 128),
        ),
        decoration: BoxDecoration(
            color: Colors.orange,
            shape: BoxShape.rectangle,
            border: Border.all(width: 4, color: Colors.purple),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            image: DecorationImage(
                image: NetworkImage(_img2),
                fit: BoxFit.scaleDown,
                repeat: ImageRepeat.repeat),
            boxShadow: [
              BoxShadow(
                  color: Colors.green, offset: Offset(0, 20), blurRadius: 20),
              BoxShadow(
                  color: Colors.yellow, offset: Offset(0, -90), blurRadius: 10),
            ]),
      ),
    );
  }
}

//CONTAINER 1 VE 2DEKI BODY KODLARI
/*body: Center(
          child: Container(
            width: 200,
            height: 200,
            color: Colors.red,
            child: Container(
              alignment: Alignment.center,
              color: Colors.blue,
              margin: EdgeInsets.all(40),
              width: 50,
              height: 50,
              child: Text('emre'),
            ),
          ),
        ),*/