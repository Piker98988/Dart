import 'dart:io';

class Person {
  int age;
  String name;
  String city;

  Person(this.age, this.name, this.city);

  void introduce() {
    stdout.write("Fields:\n  Name: ${this.name}\n  Age: ${this.age}\n  City: ${this.city}");
    return;
  }
}

void main() {
  Person piker = Person(16, "piker", "madrid");
  piker.introduce();
}

