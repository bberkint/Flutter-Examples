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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var tfControl =
      TextEditingController(); // textfield daki bilgileri okuyabiliriz
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PopupMenuButton(
              child: Icon(Icons.open_in_new),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    "Sil",
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    "Güncelle",
                    style: TextStyle(color: Colors.yellow),
                  ),
                ),
              ],
              onCanceled: () {
                print("Seçim yapılmadı");
              },
              onSelected: (MenuItemValue) {
                if (MenuItemValue == 1) {
                  print("Sil seçildi");
                }
                if (MenuItemValue == 2) {
                  print("Güncelle seçildi");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
