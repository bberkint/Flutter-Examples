import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String resimAdi = "lebron.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeInImage.assetNetwork(
              placeholder: "resimler/placeholder.png",
              image: "https://kasimadalan.pe.hu/filmler/resimler/$resimAdi",
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  resimAdi = "kobe.jpeg";
                });
              },
              child: Text("Kobe"),
            ),
            ElevatedButton(
              child: Text("Lebron"),
              onPressed: () {
                setState(() {
                  resimAdi = "lebron.jpg";
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
