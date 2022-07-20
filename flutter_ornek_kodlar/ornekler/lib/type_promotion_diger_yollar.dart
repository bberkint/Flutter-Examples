int karakterSayisiniBul(String? metin) {
  if (metin == null) {
    return 0;
  }
  return metin.length;
}

void main(List<String> args) {
  print(karakterSayisiniBul("berkin"));
}
