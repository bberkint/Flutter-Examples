/*void main() {
  Personel personel1 = new Personel.namedCons(
      "Berkin", "Topaloglu", "34", "abfdba@gmail.com", "153513");

  Personel personel2 =
      new Personel.namedCons("Ali", "Yılmaz", 25, "yilmaz@gmail.com", "342341");

  print(personel1.ad);

  var personeller = new List(3);
  personeller[0] = personel1;

  var personelIslem = new PersonelIslem();
  personelIslem.guncelleme();
}

class Personel {
  Personel() {
    print("Constructor çalıştı");
  }

  Personel.namedCons(
      String ad, String soyad, int yas, String email, String tcNo) {
    this.ad = ad;
    this.soyad = soyad;
    this.yas = yas;
    this.email = email;
    this.tcNo = tcNo;
  }

  String ad;
  String soyad;
  int yas;
  String email;
  String tcNo;
}

class PersonelIslem {
  void kaydet(Personel personel) {
    print("Kadedildi " + personel.ad);
  }

  void sil(Personel personel) {
    print("Silindi " + personel.ad);
  }

  void guncelleme(Personel personel) {
    print("Güncellendi " + personel.ad);
  }
}
*/