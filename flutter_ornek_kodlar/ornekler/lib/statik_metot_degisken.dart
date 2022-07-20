void main(List<String> args) {
  Matematik m1 = Matematik(25, 15);
  m1.cikar();
  m1.topla();

  Matematik m2 = Matematik(68, 17);
  m2.cikar();
  m2.topla();
  print(Matematik.PI);
  Matematik.sinifAdiniSoyle();
}

class Matematik {
  //instance variable
  int sayi1 = 0;
  int sayi2 = 0;

  static void sinifAdiniSoyle() {
    print("Ben matematik sınıfıyım");
  }

  //class variable
  static double PI = 3.14;

  Matematik(this.sayi1, this.sayi2);

  void topla() {
    print("Toplam ${sayi1 + sayi2}");
  }

  void cikar() {
    print("Toplam ${sayi1 - sayi2}");
  }
}
