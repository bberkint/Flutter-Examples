import 'package:flutter/cupertino.dart';

void main(List<String> args) {
  String? mesaj;
  if (DateTime.now().hour < 22) {
    mesaj = "günaydın";
  } else {
    mesaj = "iyi akşamlar";
  }

  print(mesaj);
  print(mesaj.length);
  Object metin = "bu bir string";
  if (metin is String) {
    print(metin.length);
  }
}
