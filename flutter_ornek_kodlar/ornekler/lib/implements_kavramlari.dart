void main(List<String> args) {}

abstract class Hayvan {
  void soyutOlmayanMetot() {
    print("Metotun tanımı");
  }
}

abstract class Ucabienler {
  void fly();
  void Test();
}

abstract class Havlayabilenler {
  void bark();
}

abstract class Kosabilenler {
  void run();
}

class Kopek extends Hayvan implements Havlayabilenler, Kosabilenler {
  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }
}

class Kus extends Hayvan implements Ucabienler {
  @override
  void fly() {
    // TODO: implement fly
  }

  @override
  void Test() {
    // TODO: implement Test
  }
}
