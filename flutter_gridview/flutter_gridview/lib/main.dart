import 'package:flutter/material.dart';
import 'package:flutter_gridview/GridView.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("GridView Kullanımı"),
          backgroundColor: Colors.green,
        ),
        body: GridViewDemo(),
      ),
    ),
  );
}
