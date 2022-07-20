void main(List<String> args) {
  const Student berkin = Student(4, "Berkin");
  final Student berkin2 = Student(4, "Berkin");

  if (berkin == berkin2) {
    print("Eşit");
  } else {
    print("Eşit değil");
  }
}

class Student {
  final int id;
  final String name;

  const Student(this.id, this.name);
}
