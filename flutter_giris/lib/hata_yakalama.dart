void main() {
  int sayi1 = 20;
  int sayi2 = 0;

  try {
    int sonuc = sayi1 ~/ sayi2;
    print("Sonuc : " + sonuc.toString());
  } on IntegerDivisionByZeroException catch (e) {
    print("0 a bölme hatası oluştu");
  } on FormatException catch (e) {
    print("Format hatasıyla karşılaştınız .");
  }
}
