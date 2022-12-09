import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:uygulama_yapisi/sayfa_gecis_uygulamasi.dart';

class SayfaB extends StatefulWidget {
  const SayfaB({super.key});

  @override
  State<SayfaB> createState() => _SayfaBState();
}

class _SayfaBState extends State<SayfaB> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sayfa B"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Geldiği Sayfaya Dön "),
              onPressed: () {
                Navigator.pop(
                    context); // Geldiği sayfaya döndüren kodlama navigator.pop
              },
            ),
            ElevatedButton(
              child: Text("Anasayfaya Dön"),
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
            ),
            ElevatedButton(
              child: Text("Anasayfaya Geçiş Yap"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            AnaSayfa())); // burada anasayfayı yeniden acıyor bu yüzden sol ust köşede geri tuşu beliriyor
              },
            ),
          ],
        ),
      ), //Tasarım Yapılan Alan
    );
  }
}
