void main(List<String> args) {
  mesajVer();
  mesajVerIsimle("Berkin");
  topla(5, 2);
}

void mesajVer() {
  print("Hosgeldiniz");
  print("Uygulama");
}

void mesajVerIsimle(String isim) {
  print("Hosgeldin" + isim);
}

int topla(int sayi1, int sayi2) {
  int toplam = sayi1 + sayi2;
  return toplam;
}

void ornek(String ad1, String ad2, String ad3) {}
