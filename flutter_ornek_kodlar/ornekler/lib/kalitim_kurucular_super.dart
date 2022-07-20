import 'package:flutter/material.dart';

main(List<String> args) {
  Asker berkin = Asker("berkin", 22);
  Er hasan = Er("hasan", 25);
  hasan.memleketDegistir("İstanbul");
  hasan.selamla();
}

class Asker {
  String ad = "";
  int yas = 0;
  String memleket = "";
  Asker(this.ad, this.yas) {
    print("Asker clasının constructoru çalıştı");
  }

  void selamla() {
    print("Merhaba adım $ad ve yaşım $yas");
  }
}

class Er extends Asker {
  Er(String ad, int yas) : super(ad, yas) {
    print("Er classının constructoru çalıştı");
  }

  void memleketDegistir(String yeniMemleket) {
    super.memleket;
  }

  @override
  void selamla() {
    print("Er classından selamlar");
  }
}
