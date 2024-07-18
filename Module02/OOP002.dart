import 'dart:io';

class Animal {
  int legs;
  String name;
  Animal(this.legs, this.name);

  void makeSound() {
    stdout.write("Sound\n");
  }
}

class Dog extends Animal {
  Dog(super.legs, super.name);

  @override
  void makeSound() {
    stdout.write("Woof\n");
  }

}

class Cat extends Animal {
  Cat(super.legs, super.name);

  @override
  void makeSound() {
    stdout.write("Meow\n");
  }

}


void main() {
  var purry = Cat(4, "purry");
  purry.makeSound();
}
