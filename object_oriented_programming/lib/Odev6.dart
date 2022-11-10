class Odev6 {
  int maasHesapla(int gunSayisi) {
    int calismaSaati = gunSayisi * 8;
    print("Çalışma saati : $calismaSaati");

    int maas = 0;

    if (calismaSaati > 160) {
      int mesaiFazlasi = calismaSaati - 160;
      maas = 160 * 10 + mesaiFazlasi * 20;
    } else {
      maas = calismaSaati * 10;
    }
    return maas;
  }
}
