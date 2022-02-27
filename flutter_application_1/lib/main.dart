import 'package:flutter/material.dart';

// tek satır yorum 

/*
  çoklu satır yorum
*/
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.blueGrey[200],
          appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 255, 198, 196),
            title: Text('Mutlu Bayramlar'),
        ), 
        body: Center(
          child: Image.network(
            'https://productimages.hepsiburada.net/s/53/375/11146125508658.jpg'),
        )
      ),
    ),
  );
}
