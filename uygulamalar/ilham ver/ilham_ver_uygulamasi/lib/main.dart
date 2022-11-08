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
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'İlham Ver'),
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
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            // boşluk vermek için padding kullandık.
            padding: EdgeInsets.only(
                top: ekranYuksekligi / 100, bottom: ekranYuksekligi / 100),
            child: SizedBox(
              width: ekranGenisligi / 2,
              child: Image.asset("images/stevejobs2.jpeg"),
            ),
          ),
          Text(
            "Steve Jobs ",
            style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: ekranGenisligi / 10),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
                left: ekranGenisligi / 100, right: ekranGenisligi / 100),
            child: Text(
              "Dünyayı değipştirecek insanlar, onu değiştirebileceklerini düşünecek kadar çılgın insanlardır",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: ekranGenisligi / 15),
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: ekranYuksekligi / 100),
            child: SizedBox(
              width: ekranGenisligi / 2,
              height: ekranYuksekligi / 15,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                ),
                onPressed: () {
                  print("İlham Verildi");
                },
                child: Text(
                  "İLHAM VER!",
                  style: TextStyle(fontSize: ekranGenisligi / 25),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
