import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_kullanimi/sayac_model.dart';

class IkinciSayfa extends StatelessWidget {
  const IkinciSayfa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("İkinci Sayfa"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Consumer<SayacModel>(
              builder: (context, sayacModelNesne, child) {
                return Text("${sayacModelNesne.sayaciOku()}",
                    style: TextStyle(fontSize: 36));
              },
            ),
            Consumer<SayacModel>(
              builder: (context, sayacModelNesne, child) {
                return ElevatedButton(
                  onPressed: () {
                    sayacModelNesne.sayaciArttir();
                  },
                  child: Text("Sayaç Arttır"),
                );
              },
            ),
            Consumer<SayacModel>(
              builder: (context, sayacModelNesne, child) {
                return ElevatedButton(
                  onPressed: () {
                    sayacModelNesne.sayaciAzalt(2);
                  },
                  child: Text("Sayaç Azalt"),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
