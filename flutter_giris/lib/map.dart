// anahtar ve değer  key-value

void main() {
  var sozluk = {"book": "Kitap", "pencil": "kalem", "eraser": "silgi"};
  print(sozluk["pencil"]);

  sozluk["table"] = "masa";
  print(sozluk);

  sozluk.remove("eraser");

  print(sozluk);

  for (var element in sozluk.values) {
    print(element);
  }

  print(sozluk.containsKey("book"));
}
