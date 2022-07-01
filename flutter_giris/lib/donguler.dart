void main() {
  for (var i = 1; i <= 10; i++) {
    print(i);
  }

  var alfabe = ["A", "B", "C"];

  for (var i = 0; i < alfabe.length; i++) {
    print(alfabe[i]);
  }

  var sayi = 1;
  while (sayi <= 10) {
    print(sayi);
    sayi += 1;
  }

  var sayi2 = 10;

  do {
    print(sayi2);
    sayi2 += 2;
  } while (sayi2 <= 50);

  var players = ["Kobe", "Lebron", "Jordan"];

  for (var player in players) {
    print(player);
    print(player.length);
  }
}
