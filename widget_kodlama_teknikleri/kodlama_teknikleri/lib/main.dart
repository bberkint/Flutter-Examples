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
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  bool kontrol = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kodlama Teknikleri"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            (() {
              if (kontrol) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.done),
                    Text("Doğru"),
                  ],
                );
              } else {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.cancel),
                    Text("Yanlış"),
                  ],
                );
              }
            }()),
            ElevatedButton(
              child: Text("Durum 1"),
              onPressed: () {
                setState(() {
                  kontrol = true;
                });
              },
            ),
            ElevatedButton(
              child: Text("Durum 2"),
              onPressed: () {
                setState(() {
                  kontrol = false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
