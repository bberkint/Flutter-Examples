void main(List<String> args) {
  Kisi berkin = Kisi("Berkin", 22);
  berkin.kendiniTanit();

  Calisan hasan = Calisan("Hasan", 30, 3000);
  hasan.kendiniTanit();
}

class Kisi {
  String isim = "";
  int yas = 0;

  Kisi(this.isim, this.yas);
  void kendiniTanit() {
    print("Benim adım $isim ve yaşım $yas");
  }
}

class Calisan extends Kisi {
  int maas;
  Calisan(String name, int age, this.maas) : super(name, age);

  @override
  void kendiniTanit() {
    super.kendiniTanit();
    print("Maaşım da $maas");
  }
}
