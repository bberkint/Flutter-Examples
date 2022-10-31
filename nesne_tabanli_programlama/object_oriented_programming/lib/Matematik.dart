class Matematik {
  void topla(int sayi1, int sayi2) {
    int toplam = sayi1 + sayi2;
    print(toplam);
  }

  double cikar(double sayi1, double sayi2) {
    double d = sayi1 - sayi2;
    return d;
  }

  void carp(int sayi1, int sayi2, String isim) {
    int sonuc = sayi1 * sayi2;
    print("Çarpma yapan $isim sonuc : $sonuc");
  }

  String bol(double sayi1, double sayi2) {
    return "Bölme : ${sayi1 / sayi2}";
  }
}
