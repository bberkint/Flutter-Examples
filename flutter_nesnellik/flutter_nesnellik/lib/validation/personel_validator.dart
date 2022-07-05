class PersonelValidationMixin {
  validateAd(String value) {
    if (value.length < 2) {
      return "Ad en az 2 karakter olmalı";
    }
  }

  validatedSoyad(String value) {
    if (value.length < 2) {
      return "Soyad en az 2 karakter olmalı";
    }
  }

  validateKidem(String value) {
    var kidem = int.parse(value);
    if (kidem < 0) {
      return "Kıdem yılı 0 dan küçük olamaz";
    }
  }
}
