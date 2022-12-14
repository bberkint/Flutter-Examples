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
  var tfController = TextEditingController();
  String alinanVeri = "";

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
            TextField(
              decoration: InputDecoration(hintText: "Yazınız"),
            ),
            FloatingActionButton(
              onPressed: () {
                print("Fab2 tıklandı.");
              },
              tooltip: "Fab1", //butona fazla basınca bu yazı çıkıyor.
              child: Icon(Icons.print),
              backgroundColor: Colors.green,
              foregroundColor: Colors.yellow,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          print("Fab1 tıklandı.");
        },
        label: Text("Fab"),
        icon: Icon(Icons.audiotrack),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.purple,
      ),
    );
  }
}
