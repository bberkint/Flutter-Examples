class Otobus {
  late int kapasite;
  late int mevcutYolcu;
  late String nereden;
  late String nereye;

  void yolcuAl(int yolcuSayisi) {
    mevcutYolcu += yolcuSayisi;
  }

  void yolcuIndir(int yolcuSayisi) {
    mevcutYolcu -= yolcuSayisi;
  }

  void bilgiAl() {
    print("Kapasite :  $kapasite");
    print("Nereden :  $nereden");
    print("Nereye :  $nereye");
    print("Mevcut Yolcu :  $mevcutYolcu");
  }
}
