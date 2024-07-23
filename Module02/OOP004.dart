import "dart:io";
import "dart:core";

abstract class Vehicle {
  int tires;
  int speed;
  Vehicle(this.tires, this.speed);
  void move();
}

class Bike extends Vehicle {
  Bike(int speed) : super(2, speed);

  @override
  void move() {
    stdout.write("You are moving on a bike at a speed of ${this.speed}\n");
  }
}

class Car extends Vehicle {
  Car(int speed) : super(4, speed);
  
  @override
  void move() {
    stdout.write("You are moving on a car at a speed of ${this.speed}\n");
  }
}

void main() {
  return;
}