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
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Yemek Tarifi'),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: ekranGenisligi,
              child: Image.asset("images/yemekresim.jpeg"),
            ),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi / 8,
                    child: ElevatedButton(
                      child: Yazi("Beğen", ekranGenisligi / 25),
                      onPressed: () {
                        print("Beğenildi");
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.orange,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    height: ekranGenisligi / 8,
                    child: ElevatedButton(
                      child: Yazi("Yorum Yap", ekranGenisligi / 25),
                      onPressed: () {
                        print("Yorum Yapıldı.");
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi / 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Köfte",
                    style: TextStyle(
                      color: Colors.deepOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: ekranGenisligi / 20,
                    ),
                  ),
                  Row(
                    children: [
                      Yazi("Izgara Üzerinde Pişirmeye Uygun",
                          ekranGenisligi / 25),
                      Spacer(),
                      Yazi("8 Ağustos", ekranGenisligi / 25),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi / 100),
              child: Yazi(
                  "Türk mutfağında önemli bir yere sahip olan köftenin yaklaşık 290 çeşidi vardır. Temel malzemesi kıyma olan köfte; ızgara, fırın ve kızartma gibi birçok teknikle hazırlanabilir. İçerisinde kırmızı et barındıran klasik köfte, kas gelişimini destekler ve vücuda enerji verir, ayrıca çok da lezzetlidir. Ortalama 20-25 dakikada hazırlanan köfteler, ketçap, mayonez gibi farklı soslarla birlikte servis edilir",
                  ekranGenisligi / 25),
            ),
          ],
        ),
      ),
    );
  }
}

class Yazi extends StatelessWidget {
  late String icerik;
  late double yaziBoyut;

  Yazi(this.icerik, this.yaziBoyut);

  @override
  Widget build(BuildContext context) {
    return Text(
      icerik,
      style: TextStyle(fontSize: yaziBoyut),
    );
  }
}
