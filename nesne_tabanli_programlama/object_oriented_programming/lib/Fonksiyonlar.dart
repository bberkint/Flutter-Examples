void main(List<String> args) {
  selamla();
  String selam2 = selamla2();
  print(selam2);

  selamla3("Berkin");
  toplama();

  int gelenToplam = toplama1();
  print(gelenToplam);

  int gelenToplam2 = toplama2(5, 200);
  print(gelenToplam2);
}

void selamla() {
  String sonuc = "Selam";
  print(sonuc);
}

String selamla2() {
  String sonuc = "Selam 2 ";
  return sonuc;
}

void selamla3(String isim) {
  String sonuc = "Merhaba $isim";
  print(sonuc);
}

void toplama() {
  int toplam = 30 + 40;
  print("Toplam :$toplam");
}

int toplama1() {
  int toplam = 30 + 90;
  return toplam;
}

int toplama2(int sayi1, int sayi2) {
  int toplam = sayi1 + sayi2;
  return toplam;
}
