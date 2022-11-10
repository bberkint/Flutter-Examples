class Odev3 {
  int faktoriyel(int sayi) {
    int faktoriyel = 1;
    for (var i = 1; i <= sayi; i++) {
      faktoriyel = faktoriyel * i;
    }
    print("Faktoriyel : $faktoriyel");
    return faktoriyel;
  }
}
