import 'dart:io';

class Book {
  String author;
  String title;
  int pages;

  Book(this.author, this.title, this.pages);
  void cover() {
    stdout.write("${this.title} was written by ${this.author} and has ${this.pages} pages.\n");
  }
}


void main() {
  Book n001 = Book("James Clear", "Atomic habits", 300);
  n001.cover();
  
}
