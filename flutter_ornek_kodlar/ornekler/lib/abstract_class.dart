void main(List<String> args) {
  Sekil s1 = Kare(4);

  s1.selamler();
  print(s1.alanHesapla());

  Sekil s2 = Dikdortgen(4, 6);
  s2.selamler();
  print(s2.alanHesapla());

  List<Sekil> tumSekiller = [];
  tumSekiller.add(s1);
  tumSekiller.add(s2);
}

abstract class Sekil {
  double alanHesapla();

  double cevreHesapla();

  void selamler() {
    print("Ben sekil sınıfındanım");
  }
}

class Kare extends Sekil {
  int kenar;
  Kare(this.kenar);
  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }

  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }

  void selamler() {
    print("Ben kare sınıfındanım");
  }
}

class Dikdortgen extends Sekil {
  int en, boy;
  Dikdortgen(this.en, this.boy);

  @override
  double alanHesapla() {
    return en * boy.toDouble();
  }

  @override
  double cevreHesapla() {
    return 2 * (en + boy).toDouble();
  }

  void selamler() {
    print("Ben dikdörtgen sınıfındanım");
  }
}
