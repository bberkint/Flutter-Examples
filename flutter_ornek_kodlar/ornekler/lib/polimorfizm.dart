import 'package:flutter/material.dart';

main(List<String> args) {
  User user1 = User();
  NormalUser normalUser = NormalUser();
  user1.girisYap();
  SadeceOkuyabilenNormalUser user2 = SadeceOkuyabilenNormalUser();
  user2.adiniKoy();
  user2.davetEt();

  User user3 = AdminUser();
  user3.girisYap();
  User user4 = SadeceOkuyabilenNormalUser();
  user4.girisYap();

  List<User> tumUserlar = [];
  tumUserlar.add(user2);
  tumUserlar.add(user1);
  tumUserlar.add(user3);
  tumUserlar.add(user4);

  test(user1);
  test(user3);
}

void test(User kullanici) {
  kullanici.girisYap();
}

class User {
  String email = "";
  String password = "";

  void girisYap() {
    print("Giris yapıldı");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Normal User davet etti");
  }
}

class AdminUser extends User {
  @override
  void girisYap() {
    print("Admin User giriş yaptı");
  }

  void kullaniciGoster() {
    print("Kullanıcı gösterildi");
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser {
  void adiniKoy() {
    print("Ben sadece okuyabilirim");
  }

  @override
  void girisYap() {
    print("Okuyabilen Normal user giriş yaptı");
  }
}
