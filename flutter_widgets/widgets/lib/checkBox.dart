import "package:flutter/material.dart";

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
  bool kotlinDurum = false;
  bool dartDurum = false;

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
            CheckboxListTile(
              title: Text("Kotlin"),
              value: kotlinDurum,
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.yellow,
              activeColor: Colors.deepPurple,
              onChanged: (bool? veri) {
                print("Kotlin seçildi : $veri");
                setState(() {
                  kotlinDurum = veri!;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Dart"),
              value: dartDurum,
              controlAffinity: ListTileControlAffinity.leading,
              checkColor: Colors.red,
              activeColor: Colors.yellow,
              onChanged: (bool? veri) {
                print("Dart seçildi : $veri");
                setState(() {
                  dartDurum = veri!;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                print("Dart durum : $dartDurum");
                print("Kotlin durum : $kotlinDurum");
              },
              child: Text("Göster"),
            )
          ],
        ),
      ),
    );
  }
}
