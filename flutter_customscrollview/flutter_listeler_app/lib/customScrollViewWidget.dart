import 'package:flutter/material.dart';

class customScrollViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          // title: Text(
          //   "Sliver App Bar",
          //   style: TextStyle(color: Colors.white),
          // ),
          centerTitle: true,
          backgroundColor: Colors.white,
          expandedHeight: 250,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "Sliver App Bar",
              style: TextStyle(color: Colors.yellow),
            ),
            centerTitle: true,
            background: Image.network(
                "https://img.republicworld.com/republic-prod/stories/promolarge/xhdpi/3tijnb9mwaqp4y81_1600686404.jpeg",
                fit: BoxFit.fitHeight),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(ListeElemanlari()),
        ),
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          delegate: SliverChildListDelegate(ListeElemanlari()),
        ),
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          delegate: SliverChildListDelegate(ListeElemanlari()),
        ),
        SliverGrid(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
          delegate: SliverChildListDelegate(ListeElemanlari()),
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  List<Widget> ListeElemanlari() {
    return [
      Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[200],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 1",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[300],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 2",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.green[400],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 3",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.blue[200],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 4",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.blue[300],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 5",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.blue[400],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 6",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.red[200],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 7",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.red[300],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 8",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 100,
        color: Colors.red[400],
        alignment: Alignment.center,
        child: Text(
          "Bölüm 9",
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      )
    ];
  }
}
