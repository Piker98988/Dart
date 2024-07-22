import 'dart:io';

class Animal {
  String name;

  Animal(this.name);

  void whatIsMyName() {
    stdout.write("I make a sound!\n");
    return;
  }
}

class Cat extends Animal {
  Cat(super.name);

  void whatIsMyName() {
    stdout.write("I'm a cat! I meow! My name is ${this.name}!\n");
    return;
  }
}

class Dog extends Animal {
  Dog(super.name);

  void whatIsMyName() {
    stdout.write("I'm a dog! I bark! My name is ${this.name}!\n");
    return;
  }
}

void main() {
  Dog doggy = Dog("tommy");
  Cat kay = Cat("kay");
  Cat araki = Cat("araki");
  List<Animal> pets = [doggy, kay, araki];
  for (Animal pet in pets) {
    pet.whatIsMyName();
  }
}
