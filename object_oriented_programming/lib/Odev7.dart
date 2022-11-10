class Odev7 {
  int internetUcretiHesaplama(int GB) {
    int ucret = 0;

    if (GB > 50) {
      int kotaFazlasi = GB - 50;
      ucret = 100 + kotaFazlasi;
    } else {
      ucret = 100;
    }
    return ucret;
  }
}
