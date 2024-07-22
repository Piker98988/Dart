import 'dart:io';
import "dart:math";

// Question for Gemini: is the @override decorator needed?

abstract class Shape {
  void area();
  void perimeter();
}

class Circle extends Shape {
  double diameter;
  Circle(this.diameter);
  // implemented diameter instead of raidus because its easier for a human to measure radius

  @override
  void area() {
    stdout.write("The area of this circle is: ${pi*(diameter/2)*(diameter/2)}\n");
  }

  @override
  void perimeter() {
    stdout.write("The perimeter of this circle is ${pi*2*(diameter/2)}\n");
  }
}

class Rectangle extends Shape {
  int height;
  int width;

  Rectangle(this.height, this.width);

  @override
  void area() {
    stdout.write("The area of your rectangle is ${height*width}\n");
  }
  @override
  void perimeter() {
    stdout.write("The perimeter of this rectangle is ${height*2+width*2}\n");
  }
}

void main() {
  Circle pvcPipeSection = Circle(12.5);
  pvcPipeSection.area();
  pvcPipeSection.perimeter();
  Rectangle cardboardBoxSide = Rectangle(10, 15);
  cardboardBoxSide.area();
  cardboardBoxSide.perimeter();
}
