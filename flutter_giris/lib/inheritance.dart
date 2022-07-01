void main() {
  MusteriIslem musteriIslem = new MusteriIslem();
  musteriIslem.dogumGunuOlanMusteri();

  PersonelIslem personelIslem = new PersonelIslem();
  personelIslem.enCokSatanUrunuGetir();
  personelIslem.kaydet();
}

class MusteriIslem extends KisiIslem {
  void dogumGunuOlanMusteri() {
    print("Doğum günü olan müşteri listesi");
  }
}

class PersonelIslem extends KisiIslem {
  void enCokSatanUrunuGetir() {
    print("En çok satan ürün getirildi.");
  }
}

class KisiIslem {
  void kaydet() {
    print("Kaydedildi");
  }

  void sil() {
    print("Silindi");
  }
}
