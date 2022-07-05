class Personel {
  int id = 0;
  String ad = "";
  String soyad = "";
  int kidem = 0;
  String durum = "";

  Personel.withId(this.id, this.ad, this.soyad, this.kidem, this.durum);

  Personel(
      {String ad = "", String soyad = "", int kidem = 0, String durum = ""}) {
    this.ad = ad;
    this.soyad = soyad;
    this.kidem = kidem;
    this.durum = durum;
  }

  Personel.withoutInfo();

  String get getDurum {
    String mesaj = "";
    if (this.kidem < 5) {
      mesaj = "Kıdemli";
    } else if (this.kidem < 8) {
      mesaj = "Uzman";
    } else {
      mesaj = "Kıdemli Uzman";
    }
    return mesaj;
  }
}
