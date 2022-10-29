import 'package:object_oriented_programming/Otobus.dart';

void main(List<String> args) {
  var kamilKoc = Otobus();
  kamilKoc.kapasite = 50;
  kamilKoc.mevcutYolcu = 37;
  kamilKoc.nereden = "İstanbul";
  kamilKoc.nereye = "Antalya";

  int gelenKapasite = kamilKoc.kapasite;
  print(gelenKapasite);

  kamilKoc.bilgiAl();

  kamilKoc.yolcuAl(5);
  kamilKoc.bilgiAl();
  kamilKoc.yolcuIndir(8);
  kamilKoc.bilgiAl();

  var otobusFirmasi = Otobus();
  otobusFirmasi.kapasite = 10;
  otobusFirmasi.nereden = "Edirne";
  otobusFirmasi.nereye = "Çanakkale";
  otobusFirmasi.mevcutYolcu = 2;

  otobusFirmasi.bilgiAl();
  otobusFirmasi.yolcuAl(5);
  otobusFirmasi.bilgiAl();
}
