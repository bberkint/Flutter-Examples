class Araba {
  //Değer atama
  late String renk;
  late int hiz;
  late bool calisiyorMu;

  //değer okuma

  void bilgiAl() {
    print("Renk : $renk");
    print("Hız : $hiz");
    print("Çalışıyor mu : $calisiyorMu");
  }

  void calistir() {
    calisiyorMu = true;
    hiz = 5;
  }

  void durdur() {
    calisiyorMu = false;
    hiz = 0;
  }

  void hizlan(int kacKm) {
    hiz = hiz + kacKm;
  }

  void yavasla(int kacKm) {
    hiz = hiz - kacKm;
  }
}
