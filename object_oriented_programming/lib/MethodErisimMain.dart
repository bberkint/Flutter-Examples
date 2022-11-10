import 'package:object_oriented_programming/Matematik.dart';

void main(List<String> args) {
  var m = Matematik();
  m.topla(5, 9);

  double c = m.cikar(89, 56);
  print(c);

  m.carp(51, 4, "Berkin");

  String veri = m.bol(100, 6);
  print(veri);
}
