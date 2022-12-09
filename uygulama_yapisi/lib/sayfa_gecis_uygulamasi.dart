import 'package:flutter/material.dart';
import 'package:uygulama_yapisi/SayfaA.dart';

import 'Sayfa2.dart';

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
      debugShowCheckedModeBanner: false, //sağ üstteki etiketi kaldırır.
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity
            .adaptivePlatformDensity, //Arayüzün bütün ekranlarda uyumlu çalışmasını sağlar.
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anasayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Sayfa A'ya git"),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SayfaA()));
              },
            )
          ],
        ),
      ), //Tasarım Yapılan Alan
    );
  }
}
