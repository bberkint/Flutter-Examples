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
      debugShowCheckedModeBanner: false, //sağ üstteki etiketi kaldırır.
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity
            .adaptivePlatformDensity, //Arayüzün bütün ekranlarda uyumlu çalışmasını sağlar.
      ),
      home: const MyHomePage(title: 'UygulamaYapısı'),
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
  late int sayac = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Tıkla"),
              onPressed: () {
                setState(() {
                  sayac = sayac + 1;
                });
              },
            ),
            Text("Sonuç : $sayac"),
          ],
        ),
      ), //Tasarım Yapılan Alan
    );
  }
}
