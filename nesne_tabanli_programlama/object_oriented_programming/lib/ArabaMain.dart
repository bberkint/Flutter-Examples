import 'package:object_oriented_programming/Araba.dart';

void main() {
  Araba bmw = Araba();
  bmw.renk = "Mavi";
  bmw.hiz = 200;
  bmw.calisiyorMu = true;

  String gelenRenk = bmw.renk;

  print(gelenRenk);
  print(bmw.calisiyorMu);
  print(bmw.hiz);

  bmw.renk = "kırmızı";
  print(bmw.renk);

  bmw.bilgiAl();
  bmw.durdur();
  bmw.bilgiAl();
  bmw.calistir();
  bmw.bilgiAl();

  bmw.hizlan(50);
  bmw.bilgiAl();

  bmw.yavasla(27);
  bmw.bilgiAl();

  var limuzin = Araba();
  limuzin.renk = "siyah";
  limuzin.hiz = 521;
  limuzin.calisiyorMu = true;

  limuzin.bilgiAl();
}
