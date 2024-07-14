import 'dart:io';

main() {
  stdout.write("Welcome to calculator. Please input:\n");
  stdout.write("Number 1: ");
  double? num1 = double.parse(stdin.readLineSync()!);
  stdout.write("Number 2: ");
  double? num2 = double.parse(stdin.readLineSync()!);
  double add = (num1 + num2);
  double sub = (num1 - num2);
  double mul = (num1 * num2);
  double div = (num1 / num2);
  stdout.write("The result of the operation ADDITION is: $add\n");
  stdout.write("The result of the operation SUBSTRACTION is: $sub\n");
  stdout.write("The result of the operation MULTIPLICATION is: $mul\n");
  stdout.write("The result of the operation DIVISION is: $div\n");
}
