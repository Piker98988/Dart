import 'dart:io';

class Paralellogram {
  // Attributes
  int _height;
  int _width;

  // Getters and setters
  int get height => _height;
  set width(int width) {
    _width = width;
  }

  // Constructors
  Paralellogram(this._height, this._width);
  Paralellogram.square(int size) : _height=size, _width=size;

  // Methods
  void area() {
    stdout.write("The area of your paralellogram is ${this._width * this._height}\n");
  }
}


void main() {
  return;
}
