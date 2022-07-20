void main(List<String> args) {
  Veritabani db = OracleDB();
  db.userDelete();
  db.userSave();

  userGuncelle(db);
}

void userGuncelle(Veritabani veritabani) {
  veritabani.userUpdate();
}

abstract class Veritabani {
  void userSave();
  void userUpdate();
  void userDelete();
}

class OracleDB extends Veritabani {
  @override
  void userDelete() {
    print("Oracle DBden user silindi");
  }

  @override
  void userSave() {
    print("Oracle DBye user kaydedildi");
  }

  @override
  void userUpdate() {
    print("Oracle DBdeki user güncellendi");
  }
}

class FirebaseDB extends Veritabani {
  @override
  void userDelete() {
    print("Firebase DBden user silindi");
  }

  @override
  void userSave() {
    print("Firebase DBden user silindi");
  }

  @override
  void userUpdate() {
    print("Firebase DBden user silindi");
  }
}
