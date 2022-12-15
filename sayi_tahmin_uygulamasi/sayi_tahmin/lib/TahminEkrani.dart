import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sayi_tahmin/SonucEkrani.dart';

class TahminEkrani extends StatefulWidget {
  const TahminEkrani({super.key});

  @override
  State<TahminEkrani> createState() => _TahminEkraniState();
}

class _TahminEkraniState extends State<TahminEkrani> {
  var tfTahmin = TextEditingController();
  int rastgeleSayi = 0;
  int kalanHak = 5;
  String yonlendirme = "";

  @override
  void initState() {
    super.initState();
    rastgeleSayi = Random().nextInt(101); //0-100 arası sayı üretiyor
    print("Rastgele Sayı : $rastgeleSayi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tahmin Ekranı"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Kalan Hak : $kalanHak",
                style: TextStyle(color: Colors.black87, fontSize: 30)),
            Text("Yardım : $yonlendirme",
                style: TextStyle(color: Colors.black54, fontSize: 36)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: tfTahmin,
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  labelText: "Tahmin",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all((Radius.circular(10))),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent,
                ),
                child: Text(
                  "TAHMİN ET",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  setState(() {
                    kalanHak = kalanHak - 1;
                  });

                  int tahmin = int.parse(tfTahmin.text);
                  if (tahmin == rastgeleSayi) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SonucEkrani(
                                  sonuc: true,
                                )));
                    return;
                  }

                  if (tahmin > rastgeleSayi) {
                    setState(() {
                      yonlendirme = "Tahmini Azalt";
                    });
                  }

                  if (tahmin < rastgeleSayi) {
                    setState(() {
                      yonlendirme = "Tahmini Arttır";
                    });
                  }

                  if (kalanHak == 0) {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SonucEkrani(
                                  sonuc: false,
                                )));
                  }

                  tfTahmin.text = "";
                  //Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) =>SonucEkrani())); //psuhReplacement ile backstate den tahmin ekranını sildik
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
