import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        itemCount: 20,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.green[100 * (index)],
            child: Text(
              "Bölüm $index",
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}

/*  gridView ornek  
 extent(
      maxCrossAxisExtent: 500,
      //crossAxisCount: 2,
      //reverse: true,
      padding: EdgeInsets.all(10.0),
      crossAxisSpacing: 15,
      mainAxisSpacing: 25,
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.red[100],
          child: Text("Bölüm 1", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red[200],
          child: Text("Bölüm 2", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red[300],
          child: Text("Bölüm 3", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red[400],
          child: Text("Bölüm 4", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red[500],
          child: Text("Bölüm 5", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.red[600],
          child: Text("Bölüm 6", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.yellow[700],
          child: Text("Bölüm 7", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.yellow[800],
          child: Text("Bölüm 8", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.yellow[900],
          child: Text("Bölüm 9", textAlign: TextAlign.center),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.yellow[800],
          child: Text("Bölüm 10", textAlign: TextAlign.center),
        ),
      ],
    );  */